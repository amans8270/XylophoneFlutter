import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.red[100]
                  ),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note1.wav');
                  },
                  child: Text("Click me"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    onPrimary: Colors.orange[100]
                  ),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note2.wav');
                  },
                  child: Text("Click me"),
                ),
                 ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                    onPrimary: Colors.yellow[100]
                  ),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('note3.wav');
                  },
                  child: Text("Click me"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
