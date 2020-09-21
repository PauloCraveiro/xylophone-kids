import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void playSound(int note) {
  final player = AudioCache();
  player.play('note$note.wav');
}

Expanded buildKey({Color keyColor, int note}) {
  return Expanded(
      child: FlatButton(
    color: keyColor,
    onPressed: () {
      playSound(note);
    },
  ));
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(keyColor: Colors.red, note: 1),
              buildKey(keyColor: Colors.orange, note: 2),
              buildKey(keyColor: Colors.yellow, note: 3),
              buildKey(keyColor: Colors.green, note: 4),
              buildKey(keyColor: Colors.teal, note: 5),
              buildKey(keyColor: Colors.blue, note: 6),
              buildKey(keyColor: Colors.purple, note: 7),
            ],
          ),
        ),
      ),
    );
  }
}
