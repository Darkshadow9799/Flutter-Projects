import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftbutton = 1;
  int rightbutton = 1;

  void onPressMe() {
    setState(() {
      leftbutton = Random().nextInt(6) + 1;
      rightbutton = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(108, 116, 225, 100),
      appBar: AppBar(title: Text("Dicee"), backgroundColor: Colors.black),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Image.asset('assets/dice$leftbutton.png'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Image.asset('assets/dice$rightbutton.png'),
                ),
              ),
            ],
          ),
          MaterialButton(
            height: 40.0,
            minWidth: 70.0,
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            child: new Text("Press Me"),
            onPressed: () => onPressMe(),
            splashColor: Colors.redAccent,
          )
        ],
      ),
    );
  }
}
