import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: new AppBar(
        title: new Text('主页面'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Color(0xFFCE3433),
      ),
      body: null,
    );
  }
}