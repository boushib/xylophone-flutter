import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  void playAudio(int index) {
    final player = AudioCache();
    player.play('audio/note$index.wav');
  }

  Widget buildKey(int index){
    return Expanded(
      child: FlatButton(
        color: Colors.red[index * 100],
        onPressed: () {
          playAudio(index);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        buildKey(1),
        buildKey(2),
        buildKey(3),
        buildKey(4),
        buildKey(5),
        buildKey(6),
        buildKey(7),
      ],
    );
  }
}
