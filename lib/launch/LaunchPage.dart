import 'package:flutter/material.dart';
import 'package:mike_music/home/HomePage.dart';

class LaunchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('第一个页面'),
        backgroundColor: Colors.red,
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('跳转'),
          onPressed: () {
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new HomePage()),
            );
          },
        ),
      ),
    );
  }
}