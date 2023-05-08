import 'package:flutter/material.dart';
import '../main.dart';
import 'package:mother/2.Restaurant/Whatisthis/step1.dart';
import 'package:mother/2.Restaurant/Whatisthis/step2/step2a.dart';
import 'package:mother/2.Restaurant/Whatisthis/step3.dart';
import 'package:mother/2.Restaurant/OKONOMIYAKI/OKO step1.dart';
import 'package:mother/2.Restaurant/OKONOMIYAKI/OKO step3.dart';
import 'package:mother/2.Restaurant/OKONOMIYAKI/step2/OKO step2a.dart';
import 'package:mother/2.Restaurant/InEnglish/step1.dart';
import 'package:mother/2.Restaurant/InEnglish/step3.dart';
import 'package:mother/2.Restaurant/InEnglish/step2/step2a.dart';
import 'package:mother/2.Restaurant/Letsorder/step1.dart';
import 'package:mother/2.Restaurant/Letsorder/step3.dart';
import 'package:mother/2.Restaurant/Letsorder/step2/step2a.dart';
import 'package:mother/3.Phone inquiries/Fromwhattime/step1.dart';
import 'package:mother/3.Phone inquiries/Fromwhattime/step3.dart';
import 'package:mother/3.Phone inquiries/Fromwhattime/step2/step2a.dart';
import 'package:mother/3.Phone inquiries/Howmuch/step2/step2a.dart';
import 'package:mother/3.Phone inquiries/Howmuch/step1.dart';
import 'package:mother/3.Phone inquiries/Howmuch/step3.dart';
import 'package:mother/3.Phone inquiries/Whenareyou/step1.dart';
import 'package:mother/3.Phone inquiries/Whenareyou/step3.dart';
import 'package:mother/3.Phone inquiries/Whenareyou/step2/step2a.dart';

class InquirebyphonePage2 extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '3.Phone inquires',
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
                '1.From what time to what time?',
                [
                  _buildStepButton('STEP1', () => Navigator.push(context, MaterialPageRoute(builder: (context) => FSTEP1()))),
                  _buildStepButton('STEP2', () => Navigator.push(context, MaterialPageRoute(builder: (context) => FSTEP2a()))),
                  _buildStepButton('STEP3', () => Navigator.push(context, MaterialPageRoute(builder: (context) => FSTEP3()))),
                ],
              ),
              //Please and Thank you↓
              _buildStepCard(
                '2.How much is the ticket?',
                [
                  _buildStepButton('STEP1', () => Navigator.push(context, MaterialPageRoute(builder: (context) => HOWSTEP1()))),
                  _buildStepButton('STEP2', () => Navigator.push(context, MaterialPageRoute(builder: (context) => HOWSTEP2a()))),
                  _buildStepButton('STEP3', () => Navigator.push(context, MaterialPageRoute(builder: (context) => HOWSTEP3()))),
                ],
              ),
              _buildStepCard(
                '3.When are you closed?',
                [
                  _buildStepButton('STEP1', () => Navigator.push(context, MaterialPageRoute(builder: (context) => WHSTEP1()))),
                  _buildStepButton('STEP2', () => Navigator.push(context, MaterialPageRoute(builder: (context) => WHSTEP2a()))),
                  _buildStepButton('STEP3', () => Navigator.push(context, MaterialPageRoute(builder: (context) => WHSTEP3()))),
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