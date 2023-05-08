import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'package:mother/5.Food Takeaways/How about this/step2/step2e.dart';
import 'package:mother/5.Food Takeaways/How about this/step3.dart';

class HATSTEP2f extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HATSTEP2f> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text(
          'STEP2',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.popUntil(context, (Route<dynamic> route) => route.isFirst);
          },
        ),
      ),
      body: Stack(
        children : [
          Column(
            children: [
              Expanded(
                  child: Container(
                    child: Image.asset('assets/videos/Takeaway/S18-2-6.png',
                      fit: BoxFit.cover,),
                  )),
            ],
          ),
          Align(
            alignment: Alignment(0.8, 0.915),
            child: Container(
              margin: EdgeInsets.only(bottom: 30.0),
              child: IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: ()async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HATSTEP3(),
                    ),
                  );
                },
                iconSize: 60,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.8, 0.9),
            child: Container(
              margin: EdgeInsets.only(bottom: 30.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {//元々はasync,awaitがあったけどそうだとpopが使え中ってので削除違いがよう分からん
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => HATSTEP2e(),
                    ),
                  );
                },
                iconSize: 50,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.74, 0.86),
            child: Text(
              'STEP3',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}