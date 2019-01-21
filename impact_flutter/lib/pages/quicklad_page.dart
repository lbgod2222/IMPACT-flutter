import 'package:flutter/material.dart';

import 'package:impact_flutter/constant/constants_index.dart';

class QuickladPage extends StatelessWidget {
  const QuickladPage({Key key, this.routeId}) : super(key: key);

  final String routeId;

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Here lies content list'),
          Text(
            'QUICKLAD',
            style: bigText,
          )
        ],
      ),
    );
  }
}