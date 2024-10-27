import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';
import 'package:tune_app/widget/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TuneModel> Tunes = [
      TuneModel(color: Color(0xffED2F31), sound: 'note1.wav'),
      TuneModel(color: Color(0xffF3922A), sound: 'note2.wav'),
      TuneModel(color: Color(0xffE9D55A), sound: 'note3.wav'),
      TuneModel(color: Color(0xff1A9B3F), sound: 'note4.wav'),
      TuneModel(color: Color(0xff0483C6), sound: 'note5.wav'),
      TuneModel(color: Color(0xff078480), sound: 'note6.wav'),
      TuneModel(color: Color(0xff7E1A8A), sound: 'note7.wav'),
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Color(0xff34424F),
        elevation: 0,
      ),
      body: Column(
        children: Tunes.map(
          (e) => TuneItem(Tune: e),
        ).toList(),
      ),
    );
  }
}
