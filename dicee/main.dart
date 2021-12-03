import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: Text('by Rookie441'),
          backgroundColor: Colors.blueGrey,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  int counter = 0;

  void roll() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      counter += leftDiceNumber + rightDiceNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                roll();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                roll();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(50),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 30),
            child: Text(
              'Counter: $counter',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Pacifico',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
