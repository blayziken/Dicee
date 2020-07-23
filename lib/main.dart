import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
          centerTitle: true,
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
  int LeftDiceNumber = 1;
  int RightDiceNumber = 1;

  void changeDiceNumber() {
    setState(() {
      LeftDiceNumber = Random().nextInt(6) + 1;
      RightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
//      mainAxisAlignment: MainAxisAlignment.center,
//      crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
              child: FlatButton(
                onPressed: () {
                  changeDiceNumber();
                  print('Left Dice was pressed');
                },
                child: Image.asset('images/dice$LeftDiceNumber.png'),
              ),
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 70),
              child: FlatButton(
                onPressed: () {
                  changeDiceNumber();
                  print('Right Dice was pressed');
                },
                child: Image.asset('images/dice$RightDiceNumber.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
