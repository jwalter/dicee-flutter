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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          diceWidget('images/dice1.png'),
          diceWidget('images/dice2.png'),
        ],
      ),
    );
  }

  Expanded diceWidget(String name) {
    return Expanded(
      child: FlatButton(
        onPressed: () => rollDice(),
        child: Image.asset(name),
      ),
    );
  }

  rollDice() {
    print('Dice pressed');
  }
}
