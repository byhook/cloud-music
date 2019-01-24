import 'package:flutter/material.dart';
import 'package:mike_music/home/HomePage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new HomePage()
    );
  }
}
