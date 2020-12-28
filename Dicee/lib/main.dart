import 'package:flutter/material.dart';
import 'DicePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dicee",
      theme: ThemeData.dark(),
      home: DicePage(),
    );
  }
}
