import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'Cwyh step2/Cwyh step2a.dart';

class CwyhSTEP3 extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<CwyhSTEP3> {

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
    controller = VideoPlayerController.asset('assets/videos/Hotel/S3-3.mp4');
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
          'STEP3',
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
            alignment: Alignment(-0.81, 0.8),
            child: Container(
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () async {
                  await Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return CwyhSTEP2a();
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
                iconSize: 60,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.74, 0.83),
            child: Text(
              'STEP2',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(right: 20,bottom: 25),
        width: 65, height: 65,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
          ),
          onPressed: () async {
            if (controller.value.isPlaying) {
              await controller.pause();
            } else {
              await controller.play();
            }
            setState(() {});
          },
          child: Icon(
            controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }
}