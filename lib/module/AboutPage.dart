import 'package:flutter/material.dart';
import 'package:mike_music/base/CommonActionBar.dart';

class AboutPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new CommonActionBar('关于我们'),
    );
  }

}