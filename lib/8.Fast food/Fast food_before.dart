import 'package:flutter/material.dart';
import '../main.dart';

import 'package:mother/7.Kamakura/Dose this train go to Shinjuku/step1.dart';
import 'package:mother/7.Kamakura/Dose this train go to Shinjuku/step2/step2a.dart';
import 'package:mother/7.Kamakura/Dose this train go to Shinjuku/step3.dart';

import 'package:mother/7.Kamakura/How do I get to the Big buddha statue/step1.dart';
import 'package:mother/7.Kamakura/How do I get to the Big buddha statue/step2/step2a.dart';
import 'package:mother/7.Kamakura/How do I get to the Big buddha statue/step3.dart';

import 'package:mother/8.Fast food/Could you say that again/step1.dart';
import 'package:mother/8.Fast food/Could you say that again/step2/step2a.dart';
import 'package:mother/8.Fast food/Could you say that again/step3.dart';

import 'package:mother/8.Fast food/Teriyaki burger/step1.dart';
import 'package:mother/8.Fast food/Teriyaki burger/step2/step2a.dart';
import 'package:mother/8.Fast food/Teriyaki burger/step3.dart';


//This page's code is changed to the code that ChatGPT wrote
class FastfoodPageBefore extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '8.Fast-food',
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
                SizedBox(
                  height: 20,
                ),
                //camera↓
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                  padding: EdgeInsets.only(top: 20,bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      width: 6,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Center(
                            child: Text(
                              '1.Could you say that again?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 27,
                                color: Colors.blue,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => againSTEP1()),
                              );
                            },
                            child: Container(
                              height: 90,
                              width: 190,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(
                                  Radius.elliptical(200, 100),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'STEP1',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => againSTEP2a()),
                              );
                            },
                            child: Container(
                              height: 90,
                              width: 190,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(
                                  Radius.elliptical(200, 100),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'STEP2',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => againSTEP3()),
                              );
                            },
                            child: Container(
                              height: 90,
                              width: 190,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(
                                  Radius.elliptical(200, 100),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'STEP3',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //This one is written by Chat GPT
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '1.Could you say that again?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.blue,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 20),
                      for (int i = 1; i <= 3; i++)
                        Container(
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () {
                              switch (i) {
                                case 1:
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (_, __, ___) => againSTEP1(),
                                      transitionsBuilder: (_, anim, __, child) => SlideTransition(
                                        position: Tween(begin: Offset(1, 0), end: Offset.zero)
                                            .chain(CurveTween(curve: Curves.easeInOut))
                                            .animate(anim),
                                        child: child,
                                      ),
                                    ),
                                  );
                                  break;
                                case 2:
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (_, __, ___) => againSTEP2a(),
                                      transitionsBuilder: (_, anim, __, child) => SlideTransition(
                                        position: Tween(begin: Offset(1, 0), end: Offset.zero)
                                            .chain(CurveTween(curve: Curves.easeInOut))
                                            .animate(anim),
                                        child: child,
                                      ),
                                    ),
                                  );
                                  break;
                                case 3:
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder: (_, __, ___) => againSTEP3(),
                                      transitionsBuilder: (_, anim, __, child) => SlideTransition(
                                        position: Tween(begin: Offset(1, 0), end: Offset.zero)
                                            .chain(CurveTween(curve: Curves.easeInOut))
                                            .animate(anim),
                                        child: child,
                                      ),
                                    ),
                                  );
                                  break;
                              }
                            },
                            child: Container(
                              height: 90,
                              width: 190,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(Radius.elliptical(200, 100)),
                              ),
                              child: Center(
                                child: Text(
                                  'STEP$i',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),


                //Teriyaki burger↓ This code is written by ChatGPT
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        '2.Teriyaki burger',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 27, color: Colors.blue, fontWeight: FontWeight.w800),
                      ),
                      for (int i = 1; i <= 3; i++)
                        Container(
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () => Navigator.of(context).push(
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) => i == 1 ? teriyakiSTEP1() : i == 2 ? teriyakiSTEP2a() : teriyakiSTEP3(),
                                transitionsBuilder: (_, anim, __, child) => SlideTransition(
                                  position: Tween(begin: Offset(1, 0), end: Offset.zero).chain(CurveTween(curve: Curves.easeInOut)).animate(anim),
                                  child: child,
                                ),
                              ),
                            ),
                            child: Container(
                              height: 90,
                              width: 190,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all(Radius.elliptical(200, 100)),
                              ),
                              child: Center(
                                child: Text(
                                  'STEP$i',
                                  style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
              ],
            )
        ),
      ),
    );
  }
}