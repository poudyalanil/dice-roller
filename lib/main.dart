import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dice Roller"),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  int leftDiceNumber = 6;
  int rightDiceNumber = 4;
  @override
  Widget build(BuildContext context) {
    leftDiceNumber=1;
    rightDiceNumber=3;

    return Center(
      child: Row(
        children: <Widget>[

          Expanded(
            child: FlatButton(
                onPressed: (){
                  print("Left Button Pressed");
                },
                child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
          Expanded(
            child: FlatButton(
                onPressed: (){
                  print("Right Button Pressed");
                },
                child: Image.asset('images/dice2.png')),
          ),
        ],
      ),
    );
  }
}
