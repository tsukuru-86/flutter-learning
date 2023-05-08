import 'package:flutter/material.dart';
import '../main.dart';

import 'package:mother/6.Shopping2/Where is the camera/step1.dart';
import 'package:mother/6.Shopping2/Where is the camera/step2/step2a.dart';
import 'package:mother/6.Shopping2/Where is the camera/step2/step2b.dart';
import 'package:mother/6.Shopping2/Where is the camera/step2/step2c.dart';
import 'package:mother/6.Shopping2/Where is the camera/step2/step2d.dart';
import 'package:mother/6.Shopping2/Where is the camera/step2/step2e.dart';
import 'package:mother/6.Shopping2/Where is the camera/step2/step2a.dart';
import 'package:mother/6.Shopping2/Where is the camera/step3.dart';

import 'package:mother/6.Shopping2/what do you recommend/step1.dart';
import 'package:mother/6.Shopping2/what do you recommend/step2/step2a.dart';
import 'package:mother/6.Shopping2/what do you recommend/step2/step2b.dart';
import 'package:mother/6.Shopping2/what do you recommend/step2/step2c.dart';
import 'package:mother/6.Shopping2/what do you recommend/step2/step2d.dart';
import 'package:mother/6.Shopping2/what do you recommend/step2/step2e.dart';
import 'package:mother/6.Shopping2/what do you recommend/step2/step2f.dart';
import 'package:mother/6.Shopping2/what do you recommend/step2/step2g.dart';
import 'package:mother/6.Shopping2/what do you recommend/step3.dart';

import 'package:mother/6.Shopping2/I will have this one/step1.dart';
import 'package:mother/6.Shopping2/I will have this one/step2/step2a.dart';
import 'package:mother/6.Shopping2/I will have this one/step3.dart';

class Shopping2Page extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '6.Shoping2',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
                  return Home();
                },
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  final Offset begin = Offset(-1.0, 0.0); // 左から右
                  final Offset end = Offset.zero;
                  final Animatable<Offset> tween = Tween(begin: begin, end: end)
                      .chain(CurveTween(curve: Curves.easeInOut));
                  final Animation<Offset> offsetAnimation = animation.drive(tween);
                  return SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  );
                  //したから上にスライドする画面遷移
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
              //Check into a Hotel↓
              _buildStepCard(
                '1.Where is the camera?',
                [
                  _buildStepButton('STEP1', () => Navigator.push(context, MaterialPageRoute(builder: (context) => cameraSTEP1()))),
                  _buildStepButton('STEP2', () => Navigator.push(context, MaterialPageRoute(builder: (context) => cameraSTEP2a()))),
                  _buildStepButton('STEP3', () => Navigator.push(context, MaterialPageRoute(builder: (context) => cameraSTEP3()))),
                ],
              ),
              //Please and Thank you↓
              _buildStepCard(
                '2.What do you recommend?',
                [
                  _buildStepButton('STEP1', () => Navigator.push(context, MaterialPageRoute(builder: (context) => recommendSTEP1()))),
                  _buildStepButton('STEP2', () => Navigator.push(context, MaterialPageRoute(builder: (context) => recommendSTEP2a()))),
                  _buildStepButton('STEP3', () => Navigator.push(context, MaterialPageRoute(builder: (context) => recommendSTEP3()))),
                ],
              ),
              _buildStepCard(
                '3.I will have this one',
                [
                  _buildStepButton('STEP1', () => Navigator.push(context, MaterialPageRoute(builder: (context) => thisoneSTEP1()))),
                  _buildStepButton('STEP2', () => Navigator.push(context, MaterialPageRoute(builder: (context) => thisoneSTEP2a()))),
                  _buildStepButton('STEP3', () => Navigator.push(context, MaterialPageRoute(builder: (context) => thisoneSTEP3()))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildStepCard(String title, List<Widget> buttons) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.blue,
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
              color: Colors.blue,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        ...buttons.map((button) => Container(margin: EdgeInsets.all(10), child: button)),
      ],
    ),
  );
}

Widget _buildStepButton(String title, VoidCallback onPressed) {
  return InkWell(
    onTap: onPressed,
    child: Container(
      height: 90,
      width: 190,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.elliptical(200, 100)),
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