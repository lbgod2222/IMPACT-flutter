import 'package:flutter/material.dart';

// constants
import 'package:impact_flutter/constant/constants_index.dart';

class DrawerComponent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _DrawerComponentState();
  }
}

// 这里做的是页面container+渲染页面

class DrawerListItem {
  String title;
  IconData icon;
  // Widget pagWidget;

  DrawerListItem(this.title, this.icon);
}

class _DrawerComponentState extends State<DrawerComponent> {
  List<DrawerListItem> _drawerList = new List();

  @override
  void initState() {
    super.initState();
    _drawerList.add(
      DrawerListItem('个人信息', Icons.perm_identity)
    );
    _drawerList.add(
      DrawerListItem('我的文章', Icons.view_carousel)
    );
    _drawerList.add(
      DrawerListItem('Quicklad', Icons.lightbulb_outline)
    );
    _drawerList.add(
      DrawerListItem('我的收藏', Icons.turned_in_not)
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Container(
            color: MainColor.positive,
            padding: EdgeInsets.only(top: ScreenUtil.getInstance().statusBarHeight, left: 10),
            child: new SizedBox(
              height: 120,
              width: double.infinity,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.all(0),
                accountName: new Text(
                  '我们仍未想',
                  style: drawerUsername,
                  ),
                accountEmail: new Text('lbgod2222@gmail.com'),
                otherAccountsPictures: <Widget>[
                  new IconButton(
                    iconSize: 18,
                    icon: new Icon(Icons.edit, color: MainColor.primary),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}