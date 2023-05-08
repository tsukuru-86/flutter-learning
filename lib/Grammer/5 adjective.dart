import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

/// Represents Homepage for Navigation

class adjective extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<adjective> {
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
          title: const Text('Adjective Sentence'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SfPdfViewer.asset(
          'assets/pdf/5 Adjective.pdf',
        ),
      ),
    );
  }
}