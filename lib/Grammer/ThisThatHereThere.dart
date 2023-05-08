import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

/// Represents Homepage for Navigation

class TTHT extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<TTHT> {
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
          title: const Text('This/That/Here/There'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SfPdfViewer.asset(
          'assets/pdf/3 ThisThatHereThere.pdf',
        ),
      ),
    );
  }
}