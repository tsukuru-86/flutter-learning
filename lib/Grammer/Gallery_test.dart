import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';


class Gallery1 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State< Gallery1> {
  String firstButtonText = 'Take photo';
  String secondButtonText = 'Record video';
  double textSize = 20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(
                    child: SizedBox.expand(
                      child: RaisedButton(
                        color: Colors.blue,
                        onPressed: _takePhoto,
                        child: Text(firstButtonText,
                            style:
                            TextStyle(fontSize: textSize, color: Colors.white)),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                      child: SizedBox.expand(
                        child: RaisedButton(
                          color: Colors.white,
                          onPressed: _recordVideo,
                          child: Text(secondButtonText,
                              style: TextStyle(
                                  fontSize: textSize, color: Colors.blueGrey)),
                        ),
                      )),
                  flex: 1,
                )
              ],
            ),
          ),
        ));
  }

  void _takePhoto() async {
    ImagePicker.pickImage(source: ImageSource.camera)
        .then((File recordedImage) {
      if (recordedImage != null && recordedImage.path != null) {
        setState(() {
          firstButtonText = 'saving in progress...';
        });
        GallerySaver.saveImage(recordedImage.path).then((String path) {
          setState(() {
            firstButtonText = 'image saved!';
          });
        });
      }
    });
  }

  void _recordVideo() async {
    Image.asset('assets/images/photo.jpg')
        .then((File recordedVideo) {
      if (recordedVideo != null && recordedVideo.path != null) {
        setState(() {
          secondButtonText = 'saving in progress...';
        });
        GallerySaver.saveVideo(recordedVideo.path).then((String path) {
          setState(() {
            secondButtonText = 'video saved!';
          });
        });
      }
    });
  }

  void _saveImage() async {
    // 画像のバイトデータを取得する
    ByteData byteData = await rootBundle.load('assets/images/photo.jpg');
    // バイトデータをUint8Listに変換する
    Uint8List bytes = byteData.buffer.asUint8List();
    // 保存先のパスを指定する
    String path = '/storage/emulated/0/DCIM/Camera/photo.jpg';
    // ファイルにバイトデータを書き込む
    File(path).writeAsBytes(bytes).then((File file) {
      setState(() {
        firstButtonText = 'image saved!';
      });
    });
  }