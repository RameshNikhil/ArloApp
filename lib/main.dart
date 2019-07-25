import 'dart:async';
import 'package:flutter/material.dart';
import 'pages/homescreen.dart';
import 'package:flutter/services.dart';
import 'routing/fade_transition.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);

  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      canvasColor: Colors.white,
      primaryColor: Colors.white,
      fontFamily: 'Quicksand',
      appBarTheme: AppBarTheme(
        color: Colors.white,
      ),
    ),
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new HomeScreen()
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);

    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context, FadeRouteBuilder(page: HomeScreen()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.only(bottom: 40.0, left: 30.0),
      color: Color(0xffE3E3E5),
      child: new Image.asset(
        'lib/assets/images/logoFull.png',
        height: 150,
      ),
    );
  }
}
