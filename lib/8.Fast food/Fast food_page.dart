import 'package:flutter/material.dart';
import 'package:mother/8.Fast food/Could you say that again/step1.dart';
import 'package:mother/8.Fast food/Could you say that again/step2/step2a.dart';
import 'package:mother/8.Fast food/Could you say that again/step3.dart';
import 'package:mother/8.Fast food/Teriyaki burger/step1.dart';
import 'package:mother/8.Fast food/Teriyaki burger/step2/step2a.dart';
import 'package:mother/8.Fast food/Teriyaki burger/step3.dart';
import 'package:mother/colors.dart';

import '../main.dart';

class FastfoodPage extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '8.Fast-food',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.turquoiseBlue,
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
                  return Home();
                },
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(opacity: animation, child: child);
                },
              ),
            );
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              _buildStepCard(
                  '1.Could you say that again?',
                  [
                    _buildStepButton(
                        'STEP1', context, Color(0xFF00afcc), againSTEP1()),
                    _buildStepButton(
                        'STEP2', context, Color(0xFF4593A0), againSTEP2a()),
                    _buildStepButton(
                        'STEP3', context, Color(0xFF476b6b), againSTEP3()),
                  ],
                  context),
              _buildStepCard(
                  '2.Teriyaki burger',
                  [
                    _buildStepButton(
                        'STEP1', context, Color(0xFF00afcc), teriyakiSTEP1()),
                    _buildStepButton(
                        'STEP2', context, Color(0xFF4593A0), teriyakiSTEP2a()),
                    _buildStepButton(
                        'STEP3', context, Color(0xFF476b6b), teriyakiSTEP3()),
                  ],
                  context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildStepCard(
    String title, List<Widget> buttons, BuildContext context) {
  double width = MediaQuery.of(context).size.width * 0.84;

  return Container(
    width: width,
    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
    decoration: BoxDecoration(
      border: Border.all(
        color: AppColors.turquoiseBlue,
        width: 6,
      ),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 27,
              color: AppColors.turquoiseBlue,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        ...buttons.map(
            (button) => Container(margin: EdgeInsets.all(10), child: button)),
      ],
    ),
  );
}

Widget _buildStepButton(
    String title, BuildContext context, Color color, Widget targetPage) {
  return InkWell(
    onTap: () {
      Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => targetPage,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      );
    },
    child: Container(
      height: 75,
      width: 180,
      decoration: BoxDecoration(
        color: color, // Use the passed color
        borderRadius: BorderRadius.all(Radius.elliptical(100, 100)),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    ),
  );
}
