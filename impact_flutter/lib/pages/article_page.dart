import 'package:flutter/material.dart';

import 'package:impact_flutter/constant/constants_index.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({Key key, this.routeId}) : super(key: key);

  final String routeId;

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Here lies content list'),
          Text(
            'ARTICLE',
            style: bigText,
          )
        ],
      ),
    );
  }
}