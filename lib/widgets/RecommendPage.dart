import 'package:flutter/material.dart';
import 'package:mike_music/bean/RecommendBanner.dart';
import 'package:mike_music/bean/RecommendBase.dart';
import 'package:mike_music/bean/RecommendSong.dart';
import 'package:mike_music/module/AboutPage.dart';
import 'package:mike_music/module/ChangeThemePage.dart';
import 'package:mike_music/module/SettingPage.dart';
import 'package:mike_music/widgets/RecommendTopItem.dart';

class RecommendPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new RecommendPageState();
  }

}

class RecommendPageState extends State<RecommendPage> {

  List list = new List();

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() {
    setState(() {
      var banner = new RecommendBanner();
      banner.images = List.generate(20, (i) => 'Hello World $i');
      list.add(banner);

      var itemSong = new RecommendSong();
      list.add(itemSong);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: ListView.builder(
          itemBuilder: renderItem,
          itemCount: list.length,
        ),
      ),
    );
  }

  Widget renderItem(BuildContext context, int index) {
    RecommendBase baseItem = list[index];
    switch (baseItem.type) {
      case 0:
        return new Container(
          height: 150.0,
          color: Colors.grey,
          child: new Stack(
            children: <Widget>[
              new Container(
                alignment: Alignment.bottomCenter,
              )
            ],
          ),
        );
      case 1:
        return new RecommendTopItem();
    }
  }

  Future<Null> onRefresh() async {
    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        list = List.generate(20, (i) => new RecommendSong());
      });
    });
  }

}
