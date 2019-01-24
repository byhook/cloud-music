import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }

}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    Widget userHeader = UserAccountsDrawerHeader(
      decoration: BoxDecoration(
          color: Color(0xFFCE3433)
      ),
      accountName: Text("byhook"),
      accountEmail: Text("byhook@163.com"),
      currentAccountPicture: CircleAvatar(
          backgroundImage: AssetImage('images/default_avatar.jpg')
      ),
    );

    return DefaultTabController(
      length: 3,
      child: new Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: new AppBar(
          title: new Text('主页面'),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Color(0xFFCE3433),
          bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.white,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_bus)),
                Tab(icon: Icon(Icons.directions_bike)),
              ]
          ),
        ),
        body: TabBarView(
            children: <Widget>[
              Icon(Icons.directions_car, size: 128.0, color: Colors.grey),
              Icon(Icons.directions_bus, size: 128.0, color: Colors.grey),
              Icon(Icons.directions_bike, size: 128.0, color: Colors.grey),
            ]
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              userHeader,
              ListTile(title: Text('云音乐'),
                leading: new CircleAvatar(
                    backgroundColor: Color(0xFFCE3433),
                    child: new Icon(Icons.school)),
                onTap: () {
                  Navigator.pop(context);
                },),
              ListTile(title: Text('设置'),
                leading: new CircleAvatar(
                    backgroundColor: Color(0xFFCE3433),
                    child: new Text('S')
                ),
                onTap: () {
                  Navigator.pop(context);
                },),
              ListTile(title: Text('关于我们'),
                leading: new CircleAvatar(
                    backgroundColor: Color(0xFFCE3433),
                    child: new Icon(Icons.list)),
                onTap: () {
                  Navigator.pop(context);
                },),
            ],
          ),
        ),
      ),
    );
  }
}