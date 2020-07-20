import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 3;

  void _rollDice() {
    setState(() {
      leftDiceNumber = _randomDice();
      rightDiceNumber = _randomDice();
    });
  }

  int _randomDice() => Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          diceWidget('images/dice$leftDiceNumber.png'),
          diceWidget('images/dice$rightDiceNumber.png'),
        ],
      ),
    );
  }

  Expanded diceWidget(String name) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          return _rollDice();
        },
        child: Image.asset(name),
      ),
    );
  }
}
