import 'package:flutter/material.dart';
// constant
import 'package:impact_flutter/components/components_index.dart';
import 'package:impact_flutter/pages/pages_index.dart';

// 构建视主图页面

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: appbarList.length,
      child: new Scaffold(
        appBar: AppBar(
          title: Text('IMPACT!'),
          centerTitle: true,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                // onPressed: () => {},
                // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          bottom: new TabBar(
            tabs: appbarList.map((AppbarItem item) {
              return new Tab(
                text: item.title,
                icon: new Icon(item.icon),
              );
            }).toList(),
          ),
        ),
        body: new MainViewLayout(),
      )
    );
  }
}

class _Route {
  final String routeId;
  _Route(this.routeId);
}

final List<_Route> _routePages = <_Route>[
  new _Route('articles'),
  new _Route('quicklads'),
  new _Route('write')
];

class MainViewLayout extends StatelessWidget {
  Widget buildMainView(BuildContext context, _Route route) {
    String routeId = route.routeId;
    switch (routeId) {
      case 'articles':
        return ArticlePage(routeId: routeId);
        break;
      case 'quicklads':
        return QuickladPage(routeId: routeId);
        break;
      case 'write':
        return ArticlePage(routeId: routeId);
        break;
      default:
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return new TabBarView(
      children: _routePages.map((_Route route) {
        return buildMainView(context, route);
      }).toList()
    );
  }
}