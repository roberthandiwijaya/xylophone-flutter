import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void PlaySound(int SoundNumber){
    final player = AudioCache();
    player.play('note$SoundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  PlaySound(1);
                },
                color: Colors.red
              ),
              FlatButton(
                  onPressed: () {
                    PlaySound(2);
                  },
                  color: Colors.orange
              ),
              FlatButton(
                  onPressed: () {
                    PlaySound(3);
                  },
                  color: Colors.yellow
              ),
              FlatButton(
                  onPressed: () {
                    PlaySound(4);
                  },
                  color: Colors.green
              ),
              FlatButton(
                  onPressed: () {
                    PlaySound(5);
                  },
                  color: Colors.teal
              ),
              FlatButton(
                  onPressed: () {
                    PlaySound(6);
                  },
                  color: Colors.blueAccent
              ),
              FlatButton(
                  onPressed: () {
                    PlaySound(7);
                  },
                  color: Colors.purple
              ),
            ],
          ),
        ),
      ),
    );
  }
}
