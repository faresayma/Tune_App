import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  Color color;
  String sound;
  TuneModel({required this.color, required this.sound});
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
