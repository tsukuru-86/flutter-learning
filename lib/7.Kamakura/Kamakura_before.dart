import 'package:flutter/material.dart';
import '../main.dart';

import 'package:mother/7.Kamakura/Dose this train go to Shinjuku/step1.dart';
import 'package:mother/7.Kamakura/Dose this train go to Shinjuku/step2/step2a.dart';
import 'package:mother/7.Kamakura/Dose this train go to Shinjuku/step3.dart';

import 'package:mother/7.Kamakura/How do I get to the Big buddha statue/step1.dart';
import 'package:mother/7.Kamakura/How do I get to the Big buddha statue/step2/step2a.dart';
import 'package:mother/7.Kamakura/How do I get to the Big buddha statue/step3.dart';

import 'package:mother/7.Kamakura/What time does the train leave/step1.dart';
import 'package:mother/7.Kamakura/What time does the train leave/step2/step2a.dart';
import 'package:mother/7.Kamakura/What time does the train leave/step3.dart';

class GotoKamakurabefore extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '7.Going to Kamakura',
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
                              '1.Does this train go to Kamakura?',
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
                                MaterialPageRoute(builder: (context) => ShinjukuSTEP1()),
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
                                MaterialPageRoute(builder: (context) => ShinjukuSTEP2a()),
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
                                MaterialPageRoute(builder: (context) => ShinjukuSTEP3()),
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
                //recommend↓
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
                          child: Text(
                            '2.How do I get to the Big Buddha statue?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 27,
                              color: Colors.blue,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        //STEP1
                        Container(
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(
                                PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation) {
                                    return BuddhaSTEP1();
                                  },
                                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                    final Offset begin = Offset(0.0, 1.0); // 下から上
                                    // final Offset begin = Offset(0.0, -1.0); // 上から下
                                    final Offset end = Offset.zero;
                                    final Animatable<Offset> tween = Tween(begin: begin, end: end)
                                        .chain(CurveTween(curve: Curves.easeInOut));
                                    final Animation<Offset> offsetAnimation = animation.drive(tween);
                                    return SlideTransition(
                                      position: offsetAnimation,
                                      child: child,
                                    );
                                  },
                                ),
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
                        //STEP2
                        Container(
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(
                                PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation, ) {
                                    return BuddhaSTEP2a();
                                  },
                                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                    final Offset begin = Offset(0.0, 1.0); // 下から上
                                    // final Offset begin = Offset(0.0, -1.0); // 上から下
                                    final Offset end = Offset.zero;
                                    final Animatable<Offset> tween = Tween(begin: begin, end: end)
                                        .chain(CurveTween(curve: Curves.easeInOut));
                                    final Animation<Offset> offsetAnimation = animation.drive(tween);
                                    return SlideTransition(
                                      position: offsetAnimation,
                                      child: child,
                                    );
                                  },
                                ),
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
                        //STEP3
                        Container(
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).push(
                                PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation, ) {
                                    return BuddhaSTEP3();
                                  },
                                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                    final Offset begin = Offset(0.0, 1.0); // 下から上
                                    // final Offset begin = Offset(0.0, -1.0); // 上から下
                                    final Offset end = Offset.zero;
                                    final Animatable<Offset> tween = Tween(begin: begin, end: end)
                                        .chain(CurveTween(curve: Curves.easeInOut));
                                    final Animation<Offset> offsetAnimation = animation.drive(tween);
                                    return SlideTransition(
                                      position: offsetAnimation,
                                      child: child,
                                    );
                                  },
                                ),
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
                //I will have this one↓
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
                          child: Text(
                            '3.What time does the train leave?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 27,
                              color: Colors.blue,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        //step1
                        Container(
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => trainSTEP1()),
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
                        //step2
                        Container(
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => trainSTEP2a()),
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
                        //step3
                        Container(
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => trainSTEP3()),
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