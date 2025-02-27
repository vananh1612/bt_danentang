import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final AudioPlayer player = AudioPlayer();

  MyHomePage({super.key});

  void playSound(int noteNumber) async {
    await player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildKey({required int number, required Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(number);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        child: SizedBox.shrink(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildKey(number: 1, color: Colors.red),
          buildKey(number: 2, color: Colors.orange),
          buildKey(number: 3, color: Colors.yellow),
          buildKey(number: 4, color: Colors.green),
          buildKey(number: 5, color: Colors.teal),
          buildKey(number: 6, color: Colors.blue),
          buildKey(number: 7, color: Colors.purple),
        ],
      ),
    );
  }
}
