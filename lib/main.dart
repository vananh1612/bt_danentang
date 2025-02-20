import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic ball',
      home: const MagicBallPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MagicBallPage extends StatefulWidget {
  const MagicBallPage({super.key});

  @override
  State<MagicBallPage> createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int ballImage = 1;

  void _randomBallImage() {
    setState(() {
      ballImage = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Center(
            child: Text("Magic Ball", style: TextStyle(color: Colors.white)),
          ),
        ),
        body: Center(
          child: TextButton(
            onPressed: _randomBallImage,
            child: Image.asset('assets/images/ball$ballImage.png'),
          ),
        ));
  }
}
