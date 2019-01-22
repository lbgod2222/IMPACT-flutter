import 'package:flutter/material.dart';
// pages
import 'package:impact_flutter/pages/home.dart';
// style constants
import 'package:impact_flutter/constant/constants_index.dart';
import 'package:impact_flutter/pages/pages_index.dart';

void main() => runApp(MyApp());

// constant
// const textStyle = const TextStyle(
//   fontFamily: 'rs',
// );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: MainColor.positive,
        scaffoldBackgroundColor: MainColor.tertiary,
        splashColor: MainColor.secondary,
        indicatorColor: MainColor.secondary,
        accentColor: MainColor.secondary,
      ),
      routes: {
        '/HomePage': (ctx) => HomePage(),
      },
      home: new SplashPage(),
    );
  }
}
