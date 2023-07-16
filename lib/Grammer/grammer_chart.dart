import 'package:flutter/material.dart';
import 'package:mother/Grammer/1 Noun.dart';
import 'package:mother/Grammer/How to count.dart';
import 'package:mother/Grammer/ThisThatHereThere.dart';
import 'package:mother/Grammer/4 There is are.dart';
import 'package:mother/Grammer/5 adjective.dart';
import 'package:mother/Grammer/6 Verb Sentence.dart';
import 'package:mother/Grammer/7 comb verb.dart';
import 'package:mother/Grammer/8 want want to.dart';
import 'package:mother/Grammer/9 naimasudicte.dart';
import 'package:mother/Grammer/Gallery_test.dart';


class grammer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Grammer chart',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 310,
                height: 80,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.blue,
                        width: 6,
                      ),
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    //ここにテキスト？の画面への画面遷移を置く
                    onPressed: ()async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Noun3(),
                        ),
                      );
                    },
                    child: Text(
                      'Noun Sentence\nBASIC RULES',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24,
                        fontWeight:FontWeight.w800,
                      ),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 310,
                height: 80,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.blue,
                        width: 6,
                      ),
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    //ここにテキスト？の画面への画面遷移を置く
                    onPressed: ()async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => count(),
                        ),
                      );
                    },
                    child: Text(
                      'How to count',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24,
                        fontWeight:FontWeight.w800,
                      ),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 310,
                height: 80,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.blue,
                        width: 6,
                      ),
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    //ここにテキスト？の画面への画面遷移を置く
                    onPressed: ()async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TTHT(),
                        ),
                      );
                    },
                    child: Text(
                      'This/That/Here/There',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 22,
                        fontWeight:FontWeight.w800,
                      ),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 310,
                height: 80,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.blue,
                        width: 6,
                      ),
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    //ここにテキスト？の画面への画面遷移を置く
                    onPressed: ()async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => isare(),
                        ),
                      );
                    },
                    child: Text(
                      'There is/are\nBASIC RULES',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24,
                        fontWeight:FontWeight.w800,
                      ),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 310,
                height: 80,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.blue,
                        width: 6,
                      ),
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    //ここにテキスト？の画面への画面遷移を置く
                    onPressed: ()async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => adjective(),
                        ),
                      );
                    },
                    child: Text(
                      'Adjective Sentence\nBASIC RULES',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24,
                        fontWeight:FontWeight.w800,
                      ),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 310,
                height: 80,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.blue,
                        width: 6,
                      ),
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    //ここにテキスト？の画面への画面遷移を置く
                    onPressed: ()async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Verb(),
                        ),
                      );
                    },
                    child: Text(
                      'Verb Sentence\nBASIC RULES',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24,
                        fontWeight:FontWeight.w800,
                      ),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 310,
                height: 80,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.blue,
                        width: 6,
                      ),
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    //ここにテキスト？の画面への画面遷移を置く
                    onPressed: ()async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => comb(),
                        ),
                      );
                    },
                    child: Text(
                      'Conbination of verbs and particles',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 22,
                        fontWeight:FontWeight.w800,
                      ),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 310,
                height: 80,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.blue,
                        width: 6,
                      ),
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    //ここにテキスト？の画面への画面遷移を置く
                    onPressed: ()async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => want(),
                        ),
                      );
                    },
                    child: Text(
                      '"I want N" "I want to V" BASIC RULES',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 22,
                        fontWeight:FontWeight.w800,
                      ),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 310,
                height: 100,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.blue,
                        width: 6,
                      ),
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    //ここにテキスト？の画面への画面遷移を置く
                    onPressed: ()async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => naimasudicte(),
                        ),
                      );
                    },
                    child: Text(
                      'masu-form\ndicitonaru-form\nte-form',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24,
                        fontWeight:FontWeight.w800,
                      ),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 310,
                height: 80,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.blue,
                        width: 6,
                      ),
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    //ここにテキスト？の画面への画面遷移を置く
                    onPressed: ()async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Gallery1(),
                        ),
                      );
                    },
                    child: Text(
                      'PDF test',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 22,
                        fontWeight:FontWeight.w800,
                      ),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}