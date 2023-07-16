import 'package:flutter/material.dart';
import 'package:mother/1.Hotel/Hotel_page.dart';
import 'package:mother/2.Restaurant/Restaurant.dart';
import 'package:mother/3.Phone inquiries/Inquire by phone_page.dart';
import 'package:mother/5.Food Takeaways/Take away_page.dart';
import 'package:mother/3.Phone inquiries/Inquire by phone_page.dart';
import 'package:mother/4.Shopping/Shopping_page.dart';
import 'package:mother/6.Shopping2/Shopping 2_page.dart';
import 'package:mother/7.Kamakura/Go to Kamakura_page.dart';
import 'package:mother/8.Fast food/Fast food_page.dart';

import 'package:mother/9.Asking for/Ask recommendation_page.dart';
import 'package:mother/Grammer/grammer_chart.dart';


// B. main関数
//void main() {runApp(MyApp());}

// D. StatelessWidgetを継承したクラス
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//        theme: ThemeData(
//          backgroundColor: Colors.white,
//        ),
//        home: Home()
//    );
//  }
//}


class Homebefore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      home:  Scaffold(
        // L. AppBar
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.public),
          title: const Text(
            '9 situations for Travelers',
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
              },
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                //1.Hotel
                SizedBox(
                  width: 310,
                  height: 100,
                  child: ElevatedButton(
                      onPressed: ()async{
                        await Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HotelPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        '1.Hotel',style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                      )),
                ),
                SizedBox(
                  height: 25,
                ),
                //2.Restaurant
                SizedBox(
                  width: 310,
                  height: 100,
                  child: ElevatedButton(
                      onPressed: ()async{
                        await Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => RestaurantPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        '2.Restaurant',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                ),
                SizedBox(
                  height: 25,
                ),
                //3.Phone inquires
                SizedBox(
                  width: 310,
                  height: 100,
                  child: ElevatedButton(
                      onPressed: ()async{
                        await Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => InquirebyphonePage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        '3.Phone inquires',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                ),
                SizedBox(
                  height: 25,
                ),
                //4.Shopping

                SizedBox(
                  width: 310,
                  height: 100,
                  child: ElevatedButton(
                      onPressed: ()async{
                        await Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Shopping(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        '4.Shopping',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                ),
                SizedBox(
                  height: 25,
                ),
                //5.Food Takeaways
                SizedBox(
                  width: 310,
                  height: 100,
                  child: ElevatedButton(
                      onPressed: ()async{
                        await Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => TakeawayPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        '5.Food Takeaways',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                ),
                SizedBox(
                  height: 25,
                ),
                //6.Shoping2
                SizedBox(
                  width: 310,
                  height: 100,
                  child: ElevatedButton(
                      onPressed: ()async{
                        await Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Shopping2Page(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        '6.Shopping2',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                ),
                SizedBox(
                  height: 25,
                ),
                //7.Going to Kamakura
                SizedBox(
                  width: 310,
                  height: 100,
                  child: ElevatedButton(
                      onPressed: ()async{
                        await Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => GotoKamakurapage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        '7.Going to Kamakura',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                ),
                SizedBox(
                  height: 25,
                ),
                //8.Fast food
                SizedBox(
                  width: 310,
                  height: 100,
                  child: ElevatedButton(
                      onPressed: ()async{
                        await Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => FastfoodPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        '8.Fast-food',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                ),
                SizedBox(
                  height: 25,
                ),
                //9.Asking for recommendations
                SizedBox(
                  width: 310,
                  height: 100,
                  child: ElevatedButton(
                      onPressed: ()async{
                        await Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => AskrecommendationPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        '9.Asking for recommendations',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: 310,
                  height: 100,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: ()async{
                        await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => grammer(),
                          ),
                        );
                      },
                      child: Text(
                        'Grammer PDF',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}