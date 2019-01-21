import 'package:flutter/material.dart';
import 'package:impact_flutter/constant/constants_index.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SplashPageState();
  }
}

class SplashPageState extends State<SplashPage>{
  TimerUtil _timerUtil;
  int _count = 3;

  @override
  void initState() {
    super.initState();
    _initTimer();
  }

  void _initTimer() {
    _timerUtil = new TimerUtil(mTotalTime: 3 * 1000);
    _timerUtil.setOnTimerTickCallback((int tick) {
      double _tick = tick / 1000;
      setState(() {
        _count = _tick.toInt();
      });
      if (_tick == 0) {
        _goHome();
      }
    });
    _timerUtil.startCountDown();
  }

  void _goHome() {
    Navigator.of(context).pushReplacementNamed('/HomePage');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: MainColor.positive,
      body: new Center(
        child: new Container(
          child: new Padding(
            padding: new EdgeInsets.fromLTRB(30, 90, 30, 0),
            child: new Text(
              'IMPACT\nNEVER\nDIE',
              style: splashText,
            ),
          ),
          alignment: Alignment.topLeft,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    if (_timerUtil != null) _timerUtil.cancel(); //记得中dispose里面把timer cancel。
  }
}
