import 'package:flutter/material.dart';
import 'package:mike_music/widgets/HomeDrawer.dart';
import 'package:mike_music/widgets/RecommendPage.dart';

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }

}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: new Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: new AppBar(
          title: new Text(
            '云音乐', style: new TextStyle(fontWeight: FontWeight.bold),),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Color(0xFFCE3433),
          bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.white,
              tabs: <Widget>[
                Tab(text: '推荐'),
                Tab(text: '本地音乐'),
                Tab(text: '朋友'),
              ]
          ),
        ),
        body: TabBarView(
            children: <Widget>[
              RecommendPage(),
              Icon(Icons.directions_bus, size: 128.0, color: Colors.grey),
              Icon(Icons.directions_bike, size: 128.0, color: Colors.grey),
            ]
        ),
        drawer: HomeDrawer(),
      ),
    );
  }
}