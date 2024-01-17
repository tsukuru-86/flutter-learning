import 'package:flutter/material.dart';
import 'package:mother/Numbers/1-10.dart';
import 'package:mother/Numbers/10-100.dart';
import 'package:mother/Numbers/100-1000.dart';
import 'package:mother/Numbers/1000-100000.dart';
import 'package:mother/colors.dart';

import '../main.dart';

class Numbers extends StatelessWidget {
  Widget _buildButton(BuildContext context, String title, Widget targetPage,
      {double fontSize = 24}) {
    return Column(
      children: [
        SizedBox(height: 15),
        SizedBox(
          width: 310,
          height: 85,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              side: BorderSide(color: AppColors.wakanaeiro, width: 6),
              primary: Colors.white,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            onPressed: () async {
              await Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    targetPage,
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              ));
            },
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.wakanaeiro,
                  fontSize: fontSize,
                  fontWeight: FontWeight.w800),
            ),
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers',
            style: TextStyle(
                fontSize: 30,
                color: AppColors.wakanaeiro,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.wakanaeiro,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => Home(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) =>
                        FadeTransition(opacity: animation, child: child),
              ),
            );
          },
        ),
        bottom: PreferredSize(
          child: Container(
            height: 5,
            color: AppColors.wakanaeiro,
          ),
          preferredSize: Size.fromHeight(5),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildButton(context, '1-10', Numbers1()),
              _buildButton(context, '10-100', Numbers10()),
              _buildButton(context, '100-1000', Numbers100(), fontSize: 22),
              _buildButton(context, '1,000-100,000', Numbers1000()),
              SizedBox(height: (250)),
            ],
          ),
        ),
      ),
    );
  }
}
