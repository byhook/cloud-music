import 'package:flutter/material.dart';
import 'package:mike_music/home/HomePage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: new ThemeData(
            primaryColor: const Color(0xFFCE3433),
            accentColor: const Color(0xFFCE3433)
        ),
        home: new HomePage()
    );
  }
}
