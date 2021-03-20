import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playSound(int trackNumber) {
    final player = AudioCache();
    player.play("note$trackNumber.wav");
  }

  Expanded getButton({Color color, int number}) => Expanded(
        child: TextButton(
          onPressed: () {
            playSound(number);
          },
          style: TextButton.styleFrom(
            backgroundColor: color,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            getButton(color: Colors.red, number: 1),
            getButton(color: Colors.blue, number: 2),
            getButton(color: Colors.yellow, number: 3),
            getButton(color: Colors.orange, number: 4),
            getButton(color: Colors.teal, number: 5),
            getButton(color: Colors.green, number: 6),
            getButton(color: Colors.purple, number: 7),
          ],
        ),
      ),
    );
  }
}
