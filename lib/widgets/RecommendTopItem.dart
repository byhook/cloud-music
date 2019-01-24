import 'package:flutter/material.dart';
import 'package:mike_music/bean/RecommendBanner.dart';
import 'package:mike_music/bean/RecommendBase.dart';
import 'package:mike_music/bean/RecommendSong.dart';
import 'package:mike_music/module/AboutPage.dart';
import 'package:mike_music/module/ChangeThemePage.dart';
import 'package:mike_music/module/SettingPage.dart';

class RecommendTopItem extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new RecommendTopItemState();
  }

}

class RecommendTopItemState extends State<RecommendTopItem> {

  @override
  Widget build(BuildContext context) {
    return new Image.asset("images/cover_header.png", width: MediaQuery
        .of(context)
        .size
        .width, fit: BoxFit.contain);
  }


}
