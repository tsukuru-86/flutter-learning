import 'package:flutter/material.dart';
import 'package:mother/1.Hotel/Hotel_page.dart';
import 'package:mother/2.Restaurant/Restaurant.dart';
import 'package:mother/3.Phone inquiries/Inquire by phone2.dart';
import 'package:mother/4.Shopping/Shopping_page.dart';
import 'package:mother/5.Food Takeaways/Take away_page.dart';
import 'package:mother/6.Shopping2/Shopping 2_page.dart';
import 'package:mother/7.Kamakura/Go to Kamakura_page.dart';
import 'package:mother/8.Fast food/Fast food_page.dart';

import 'package:mother/9.Asking for/Ask recommendation_page.dart';
import 'package:mother/Grammer/grammer_chart.dart';

//デバイスごとのUI比重を調整するためのパッケージ
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Onigiri',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Widget buildButton(BuildContext context, String text, Widget page, double fontSize) {
    return SizedBox(
      width: 310,
      height: 100,
      child: ElevatedButton(
        onPressed: () => navigateTo(context, page),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  void navigateTo(BuildContext context, Widget page) async {
    await Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<List<dynamic>> buttonData = [
      ['1.Hotel', HotelPage(), 30.0],
      ['2.Restaurant', RestaurantPage(), 30.0],
      ['3.Phone inquires', InquirebyphonePage2(), 30.0],
      ['4.Shopping', Shopping(), 28.0],
      ['5.Food Takeaways', TakeawayPage(), 30.0],
      ['6.Shopping2', Shopping2Page(), 30.0],
      ['7.Going to Kamakura', GotoKamakuraPage(), 26.0],
      ['8.Fast-food', FastfoodPage(), 28.0],
      ['9.Asking for recommendations', AskrecommendationPage(), 27.0],
    ];

    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.public),
          title: const Text('9 situations for Travelers'),
          actions: [
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                for (var data in buttonData)
                  ...[
                    SizedBox(height: 25),
                    buildButton(context, data[0] as String, data[1] as Widget, data[2] as double),
                  ],
                SizedBox(height: 25),
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
                    onPressed: () => navigateTo(context, grammer()),
                    child: Text(
                      'Grammar PDF',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
