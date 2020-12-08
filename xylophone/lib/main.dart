import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Widget buildkey({Color color, int soundnumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playsound(soundnumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildkey(color: Colors.red, soundnumber: 1),
                buildkey(color: Colors.orange, soundnumber: 2),
                buildkey(color: Colors.yellow, soundnumber: 3),
                buildkey(color: Colors.green, soundnumber: 4),
                buildkey(color: Colors.lightBlue, soundnumber: 5),
                buildkey(color: Colors.indigo, soundnumber: 6),
                buildkey(color: Colors.purple, soundnumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
