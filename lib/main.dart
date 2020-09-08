import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int SoundNumber) {
    final player = AudioCache();
    player.play('note$SoundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical:100),
                child: FlatButton(
                    onPressed: () {
                      PlaySound(1);
                    },
                    color: Colors.red),
              ),
              Container(
                child: FlatButton(
                    onPressed: () {
                      PlaySound(2);
                    },
                    color: Colors.orange),
              ),
              Container(
                child: FlatButton(
                    onPressed: () {
                      PlaySound(3);
                    },
                    color: Colors.yellow),
              ),
              Container(
                child: FlatButton(
                    onPressed: () {
                      PlaySound(4);
                    },
                    color: Colors.green),
              ),
              Container(
                child: FlatButton(
                    onPressed: () {
                      PlaySound(5);
                    },
                    color: Colors.teal),
              ),
              Container(
                child: FlatButton(
                    onPressed: () {
                      PlaySound(6);
                    },
                    color: Colors.blueAccent),
              ),
              Container(
                child: FlatButton(
                    onPressed: () {
                      PlaySound(7);
                    },
                    color: Colors.purple),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
