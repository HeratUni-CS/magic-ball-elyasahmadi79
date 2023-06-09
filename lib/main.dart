import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BallPage(),
    ),
  );
}
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[800],
      appBar: AppBar(
        title: Text("Ask me Some questions !"),
        centerTitle: true,
        backgroundColor: Colors.orange[900],
      ),
      body: Ball(),
    );
  }
}
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}
class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset("images/ball$ballNumber.png"),
        onPressed: () {
          print('I got clicked');
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
      ),
    );
  }
}
