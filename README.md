import 'package:flutter/material.dart';
import 'package:sample/video_detall_page.dart';

// B. main関数
void main() {
  runApp(MyApp());
}

// D. StatelessWidgetを継承したクラス
class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "item $i");

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
          leading: Icon(Icons.videocam),
          title: const Text('Flutter大学'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
            },
          ),
          IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
              },
          ),
        ],
        ),
        // M. bodyでページの中身をレイアウト
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.network(
                        'https://nekodeki.com/wp-content/uploads/2020/03/logo_flutter.png'
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: [
                        const Text('KBOYのFlutter大学',
                        ),
                        TextButton(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.video_call,
                                color: Colors.black,
                              ),
                              Text(
                                  '登録する',
                                   style: TextStyle(
                                     color: Colors.black,
                                    ),
                              ),
                            ]
                          ),
                          onPressed: () {
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: ()async{
                        await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VideoDetallPage(),
                          ),
                        );
                      },
                      contentPadding: EdgeInsets.all(14),
                      leading: Image.network(
                         'https://i.ytimg.com/vi/PXnqg_Ozouk/hqdefault.jpg?sqp=-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLAmjUdKEw-jfDH8nwyy3_F1VMXlfw'                      ),
                      title: Column(
                        children: [
                          Text('【Flutter超入門】リストを作る方法',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '267回再生',
                                style: TextStyle(fontSize: 13),
                              ),
                              SizedBox(width: 4),
                              Text(
                                  '5日前',
                                  style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}# flutter-learning
# flutter-learning
# flutter-learning
# flutter-learning
# flutter-learning
# Onigiri2
