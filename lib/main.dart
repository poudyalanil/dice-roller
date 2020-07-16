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


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();

}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber;
  int rightDiceNumber;
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
                  setState(() {
                    leftDiceNumber=5;

                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
          Expanded(
            child: FlatButton(
                onPressed: (){
                  setState(() {
                    rightDiceNumber=6;

                  });
                },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          ),
        ],
      ),
    );
  }
}

