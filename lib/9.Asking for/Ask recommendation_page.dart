import 'package:flutter/material.dart';
import 'package:mother/colors.dart';
import 'package:mother/9.Asking for/Could you write down it for me/step1.dart';
import 'package:mother/9.Asking for/Could you write down it for me/step2/step2a.dart';
import 'package:mother/9.Asking for/Could you write down it for me/step3.dart';
import 'package:mother/9.Asking for/I want to eat Sashimi/step1.dart';
import 'package:mother/9.Asking for/I want to eat Sashimi/step2/step2a.dart';
import 'package:mother/9.Asking for/I want to eat Sashimi/step3.dart';
import 'package:mother/9.Asking for/What do you recommend from the menu/step1.dart';
import 'package:mother/9.Asking for/What do you recommend from the menu/step2/step2a.dart';
import 'package:mother/9.Asking for/What do you recommend from the menu/step3.dart';
import 'package:mother/colors.dart';

import '../main.dart';

class AskrecommendationPage extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '9.Asking for recommendations',
          style: TextStyle(
            fontSize: 20,
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
                  '1.I want to eat Sashimi',
                  [
                    _buildStepButton(
                        'STEP1', context, Color(0xFF00afcc), SashimiSTEP1()),
                    _buildStepButton(
                        'STEP2', context, Color(0xFF4593A0), SashimiSTEP2a()),
                    _buildStepButton(
                        'STEP3', context, Color(0xFF476b6b), SashimiSTEP3()),
                  ],
                  context),
              _buildStepCard(
                  '2.Could you write it down for me?',
                  [
                    _buildStepButton(
                        'STEP1', context, Color(0xFF00afcc), writeSTEP1()),
                    _buildStepButton(
                        'STEP2', context, Color(0xFF4593A0), writeSTEP2a()),
                    _buildStepButton(
                        'STEP3', context, Color(0xFF476b6b), writeSTEP3()),
                  ],
                  context),
              _buildStepCard(
                  '3.What do you recommend from the menu?',
                  [
                    _buildStepButton(
                        'STEP1', context, Color(0xFF00afcc), menuSTEP1()),
                    _buildStepButton(
                        'STEP2', context, Color(0xFF4593A0), menuSTEP2a()),
                    _buildStepButton(
                        'STEP3', context, Color(0xFF476b6b), menuSTEP3()),
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
