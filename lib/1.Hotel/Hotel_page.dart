import 'package:flutter/material.dart';
import 'package:mother/1.Hotel/%22Please%22%20and%20%22Thank%20you%22/PaT%20STEP2/PaT%20step2.dart';
import 'package:mother/1.Hotel/Confirming%20what%20you%20heard/Cwyh%20step1.dart';
import 'package:mother/1.Hotel/Confirming%20what%20you%20heard/Cwyh%20step2/Cwyh%20step2a.dart';
import 'package:mother/1.Hotel/Confirming%20what%20you%20heard/Cwyh%20step3.dart';
import 'package:mother/1.Hotel/Is%20this%20ann%20egg/egg%20step1.dart';
import 'package:mother/1.Hotel/Is%20this%20ann%20egg/egg%20step2/egg%20step2a.dart';
import 'package:mother/1.Hotel/Is%20this%20ann%20egg/egg%20step3.dart';

import '"Please" and "Thank you"/PaT STEP3.dart';
import '"Please" and "Thank you"/PaT step1/PaT STEP1.dart';
import '../main.dart';
import '../yet.dart';
import 'Check into a hotel/CiH step3.dart';
import 'Check into a hotel/check....dart';
import 'Check into a hotel/step2/check in step2a.dart';

class HotelPage extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '1.Hotel',
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
                '1.Check into a Hotel',
                [
                  _buildStepButton('STEP1', () => Navigator.push(context, MaterialPageRoute(builder: (context) => CiHSTEP1()))),
                  _buildStepButton('STEP2', () => Navigator.push(context, MaterialPageRoute(builder: (context) => CiHSTEP2a()))),
                  _buildStepButton('STEP3', () => Navigator.push(context, MaterialPageRoute(builder: (context) => CiHSTEP3()))),
                ],
              ),
              //Please and Thank you↓
              _buildStepCard(
                '2."Please" and \n"Thank you"',
                [
                  _buildStepButton('STEP1', () => Navigator.push(context, MaterialPageRoute(builder: (context) => PaTSTEP1()))),
                  _buildStepButton('STEP2', () => Navigator.push(context, MaterialPageRoute(builder: (context) => PaTSTEP2a()))),
                  _buildStepButton('STEP3', () => Navigator.push(context, MaterialPageRoute(builder: (context) => PaTSTEP3()))),
                ],
              ),
              _buildStepCard(
                '3.Confirming\nwhat you heard',
                [
                  _buildStepButton('STEP1', () => Navigator.push(context, MaterialPageRoute(builder: (context) => CwyhSTEP1()))),
                  _buildStepButton('STEP2', () => Navigator.push(context, MaterialPageRoute(builder: (context) => CwyhSTEP2a()))),
                  _buildStepButton('STEP3', () => Navigator.push(context, MaterialPageRoute(builder: (context) => CwyhSTEP3()))),
                ],
              ),
              _buildStepCard(
                '4.Is this an egg?',
                [
                  _buildStepButton('STEP1', () => Navigator.push(context, MaterialPageRoute(builder: (context) => eggSTEP1()))),
                  _buildStepButton('STEP2', () => Navigator.push(context, MaterialPageRoute(builder: (context) => eggSTEP2a()))),
                  _buildStepButton('STEP3', () => Navigator.push(context, MaterialPageRoute(builder: (context) => eggSTEP3()))),
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