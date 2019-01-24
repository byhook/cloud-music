import 'package:flutter/material.dart';
import 'package:mike_music/module/AboutPage.dart';
import 'package:mike_music/module/ChangeThemePage.dart';
import 'package:mike_music/module/SettingPage.dart';

class HomeDrawer extends StatelessWidget {

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

    return new ConstrainedBox(
        constraints: const BoxConstraints.expand(width: 320),
        child: new Container(
          color: Colors.grey[100],
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              userHeader,
              ListTile(title: Text('个性换肤'),
                leading: new CircleAvatar(
                    backgroundColor: Color(0xFFCE3433),
                    child: new Icon(Icons.school)),
                onTap: () {
                  Navigator.of(context).push(
                      new MaterialPageRoute(builder: (ctx) {
                        return new ChangeThemePage();
                      }));
                },),
              ListTile(title: Text('设置'),
                leading: new CircleAvatar(
                    backgroundColor: Color(0xFFCE3433),
                    child: new Text('S')
                ),
                onTap: () {
                  Navigator.of(context).push(
                      new MaterialPageRoute(builder: (ctx) {
                        return new SettingPage();
                      }));
                },),
              ListTile(title: Text('关于我们'),
                leading: new CircleAvatar(
                    backgroundColor: Color(0xFFCE3433),
                    child: new Icon(Icons.list)),
                onTap: () {
                  Navigator.of(context).push(
                      new MaterialPageRoute(builder: (ctx) {
                        return new AboutPage();
                      }));
                },),
            ],
          ),
        )
    );
  }

}
