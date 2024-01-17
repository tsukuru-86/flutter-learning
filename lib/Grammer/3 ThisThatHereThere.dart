import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:mother/colors.dart';

class TTHT extends StatefulWidget {
  const TTHT({Key? key}) : super(key: key);

  @override
  State<TTHT> createState() => TTHTPageState();
}

class TTHTPageState extends State<TTHT> {
  final String imagePath = 'assets/images/3 ThisThatHereThere.png';

  Future<void> _saveImage() async {
    // Load image from assets folder
    final ByteData data = await rootBundle.load(imagePath);
    final Uint8List bytes = data.buffer.asUint8List();

    // Save image to device
    final result = await ImageGallerySaver.saveImage(bytes);
    print('Image saved: $result');
  }

  Future<void> _confirmAndSaveImage() async {
    final bool confirmed = await showCupertinoDialog<bool>(
          context: context,
          builder: (BuildContext context) {
            return CupertinoAlertDialog(
              title: Text('Confirmation'),
              content: Text('Download image now?',
                  style: TextStyle(color: Colors.black)),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: Text('Cancel'),
                  onPressed: () {
                    Navigator.of(context).pop(false); // return false
                  },
                ),
                CupertinoDialogAction(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop(true); // return true
                  },
                ),
              ],
            );
          },
        ) ??
        false; // return false if dialog is dismissed

    if (confirmed) {
      await _saveImage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'This/That/Here/There',
            style: TextStyle(
              color: Colors.white,
            )),
        backgroundColor: Color(0xFF4593A0),
        actions: [
          IconButton(
            icon: Icon(
              Icons.download_rounded,
              color: Colors.white,
            ),
            onPressed: () async {
              // Describe the action when the button is pressed
              await _confirmAndSaveImage();
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(
              Icons.close,
              color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Image.asset(imagePath),
      ),
    );
  }
}
