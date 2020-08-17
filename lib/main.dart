import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sounds) {
    final player = AudioCache();
    player.play('note$sounds.wav');
  }

  Expanded buildKey({Color color, int sounds}) {
    return Expanded(
      child: FlatButton(
           color: color,
        onPressed: () {
          playSound(sounds);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, sounds : 1),
              buildKey(color: Colors.green, sounds : 2),
              buildKey(color: Colors.blue, sounds : 3),
              buildKey(color: Colors.orange, sounds : 4),
              buildKey(color: Colors.indigo, sounds : 5),
              buildKey(color: Colors.purple, sounds : 6),
              buildKey(color: Colors.grey, sounds : 7),
            ],
          ),
        ),
      ),
    );
  }
}
