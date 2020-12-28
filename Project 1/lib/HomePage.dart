import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "India Wala";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text("Coctail App"),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/back.jpg",
              fit: BoxFit.contain,
              height: 200.0,
              width: 200.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  myText,
                  textScaleFactor: 2.0,
                ),
                SizedBox(
                  width: 50.0,
                ),
                FlatButton(
                    color: Colors.white,
                    onPressed: () {
                      myText="Hindustani";
                      setState(() {});
                    },
                    child: Text("Press me!")
                )
              ],
            ),
          ],
        )
      ),
    );
  }
}
