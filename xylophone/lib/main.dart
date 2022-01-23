import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              generateKey(Colors.red, 'note1.wav'),
              generateKey(Colors.orange, 'note2.wav'),
              generateKey(Colors.yellow, 'note3.wav'),
              generateKey(Colors.lightGreen, 'note4.wav'),
              generateKey(Colors.green, 'note5.wav'),
              generateKey(Colors.blue, 'note6.wav'),
              generateKey(Colors.purple, 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }

  Expanded generateKey(Color color, String sound) {
    return Expanded(
      child: ElevatedButton(
        child: null,
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        onPressed: () {
          player.play(sound);
        },
      ),
    );
  }
}
