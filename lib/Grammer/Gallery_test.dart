import 'package:flutter/material.dart';

class Gallery1 extends StatefulWidget {
  @override
  _Gallery1State createState() => _Gallery1State();
}

class _Gallery1State extends State<Gallery1> {
  String centerText = 'テキスト';

  void updateCenterText() {
    setState(() {
      centerText = 'ダウンロード';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image and AppBar Example'),
        actions: [
          IconButton(
            icon: Icon(Icons.download),
            onPressed: () {
              updateCenterText();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://example.com/path/to/image.jpg', // 画像のURLを指定
              width: 200,
              height: 200,
            ),
            SizedBox(height: 16),
            Text(
              centerText,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
