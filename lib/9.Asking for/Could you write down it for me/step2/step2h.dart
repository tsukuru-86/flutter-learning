import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'package:mother/9.Asking for/Could you write down it for me/step2/step2g.dart';
import 'package:mother/9.Asking for/Could you write down it for me/step2/step2i.dart';


class writeSTEP2h extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<writeSTEP2h> {

  late VideoPlayerController controller;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  loadVideoPlayer(){
    controller = VideoPlayerController.asset('assets/videos/Recommendations/S29-2-8.mp4');
    controller.addListener(() {
      setState(() {});
    });
    controller.initialize().then((value){
      setState(() {});
    });

  }

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
          Container(
            child: Column(
              children: [
                Center(
                  child: controller.value.isInitialized
                      ? AspectRatio(
                    aspectRatio: controller.value.aspectRatio,
                    child: VideoPlayer(controller),
                  )
                      : const SizedBox.shrink(),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.8, 0.9),
            child: Container(
              margin: EdgeInsets.only(bottom: 30.0),
              child: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: ()async {
                  await Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => writeSTEP2i(),
                    ),
                  );
                },
                iconSize: 50,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.8, 0.9),
            child: Container(
              margin: EdgeInsets.only(bottom: 30.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () async {
                  await Navigator.of(context).pushReplacement(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return writeSTEP2g();
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
                iconSize: 50,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 62),
              child: MaterialButton(
                padding: EdgeInsets.all(15),
                child: Icon(
                  controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                  size: 30,
                ),
                onPressed: () async {
                  if (controller.value.isPlaying) {
                    await controller.pause();
                  } else {
                    await controller.play();
                  }
                  setState(() {});
                },
                color: Colors.blue,
                textColor: Colors.white,
                shape: CircleBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}