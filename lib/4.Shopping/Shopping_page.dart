import 'package:flutter/material.dart';
import '../main.dart';

import 'package:mother/4.Shopping/HaveL/step1.dart';
import 'package:mother/4.Shopping/HaveL/step3.dart';
import 'package:mother/4.Shopping/HaveL/step2/step2a.dart';
import 'package:mother/4.Shopping/Havewine/step2/step2a.dart';
import 'package:mother/4.Shopping/Havewine/step1.dart';
import 'package:mother/4.Shopping/Havewine/step3.dart';
import 'package:mother/4.Shopping/Itis/step1.dart';
import 'package:mother/4.Shopping/Itis/step2/step2a.dart';
import 'package:mother/4.Shopping/Itis/step3.dart';
import 'package:mother/4.Shopping/Bycard/step1.dart';
import 'package:mother/4.Shopping/Bycard/step2/step2a.dart';
import 'package:mother/4.Shopping/Bycard/step3.dart';
import 'package:mother/4.Shopping/Lostitem/step1.dart';
import 'package:mother/4.Shopping/Lostitem/step2/step2a.dart';
import 'package:mother/4.Shopping/Lostitem/step3.dart';

class Shopping extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '4.Shopping',
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
                '1.Do you have this in \n L size?',
                [
                  _buildStepButton('STEP1', () => Navigator.push(context, MaterialPageRoute(builder: (context) => HaveLSTEP1()))),
                  _buildStepButton('STEP2', () => Navigator.push(context, MaterialPageRoute(builder: (context) => HaveLSTEP2a()))),
                  _buildStepButton('STEP3', () => Navigator.push(context, MaterialPageRoute(builder: (context) => HaveLSTEP3()))),
                ],
              ),
              //Please and Thank you↓
              _buildStepCard(
                '2.Do you have Japanese wine?',
                [
                  _buildStepButton('STEP1', () => Navigator.push(context, MaterialPageRoute(builder: (context) => HaveLSTEP1()))),
                  _buildStepButton('STEP2', () => Navigator.push(context, MaterialPageRoute(builder: (context) => HaveLSTEP2a()))),
                  _buildStepButton('STEP3', () => Navigator.push(context, MaterialPageRoute(builder: (context) => HaveLSTEP3()))),
                ],
              ),
              _buildStepCard(
                '3.It is cheap but tasty',
                [
                  _buildStepButton('STEP1', () => Navigator.push(context, MaterialPageRoute(builder: (context) => WineSTEP1()))),
                  _buildStepButton('STEP2', () => Navigator.push(context, MaterialPageRoute(builder: (context) => WineSTEP2a()))),
                  _buildStepButton('STEP3', () => Navigator.push(context, MaterialPageRoute(builder: (context) => WineSTEP3()))),
                ],
              ),
              _buildStepCard(
                '4.By card',
                [
                  _buildStepButton('STEP1', () => Navigator.push(context, MaterialPageRoute(builder: (context) => BySTEP1()))),
                  _buildStepButton('STEP2', () => Navigator.push(context, MaterialPageRoute(builder: (context) => BySTEP2a()))),
                  _buildStepButton('STEP3', () => Navigator.push(context, MaterialPageRoute(builder: (context) => BySTEP3()))),
                ],
              ),
              _buildStepCard(
                '5.Lost item',
                [
                  _buildStepButton('STEP1', () => Navigator.push(context, MaterialPageRoute(builder: (context) => LostSTEP1()))),
                  _buildStepButton('STEP2', () => Navigator.push(context, MaterialPageRoute(builder: (context) => LostSTEP2a()))),
                  _buildStepButton('STEP3', () => Navigator.push(context, MaterialPageRoute(builder: (context) => LostSTEP3()))),
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