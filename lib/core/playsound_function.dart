import 'package:audioplayers/audioplayers.dart';

void playsound(int click) {
  final player = AudioPlayer();
  player.play(AssetSource('note$click.wav'));
}
