import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void players(num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded widgets1({int num, Color color  }) {
    return (Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          players(num);
        },
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                widgets1(num:1 ,color:Colors.red),
                widgets1(num:2 ,color:Colors.orange),
                widgets1(num:3 ,color:Colors.yellow),
                widgets1(num:4 ,color:Colors.pink),
                widgets1(num:5 ,color:Colors.blue),
                widgets1(num:6 ,color:Colors.purple),
                widgets1(num:7 ,color:Colors.red[100])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
