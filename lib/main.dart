import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int click){
    final player = AudioPlayer();
    player.play(AssetSource('note$click.wav'));
  }
  Expanded BuildKey({required Color acolor,required int soundnumber}) {
    return Expanded(
      child: Container(
        color: acolor,
        child: TextButton(
          onPressed: (){
            playsound(soundnumber);
          },
          child: Text(''),
        ),
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
            children: [
              BuildKey(acolor: Colors.red, soundnumber: 1),
              BuildKey(acolor: Colors.orange, soundnumber: 2),
              BuildKey(acolor: Colors.yellow, soundnumber: 3),
              BuildKey(acolor: Colors.green, soundnumber: 4),
              BuildKey(acolor: Colors.teal, soundnumber: 5),
              BuildKey(acolor: Colors.blue, soundnumber: 6),
              BuildKey(acolor: Colors.purple, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
