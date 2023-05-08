import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

/// Represents Homepage for Navigation

class naimasudicte extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<naimasudicte> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('masu,dictionaly,te-form'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SfPdfViewer.asset(
          'assets/pdf/9 nai masu dic te.pdf',
        ),
      ),
    );
  }
}