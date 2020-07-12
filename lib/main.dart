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
class DicePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container();
  }
}
