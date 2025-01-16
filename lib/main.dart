import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: const Text("I Am Rich"),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body: const Center(
          child: Image(
            image: AssetImage('assets/images/rich.jpg'),
          ),
        ),
      ),
    ),
  );
}
