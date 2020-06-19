import 'dart:async';

import 'package:demo_test/Backend/SplashScreenEssentials.dart';
import 'package:demo_test/Views/LoginPage.dart';
import 'package:demo_test/Widgets/LogoTitle.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashScreenEssentials screenEssentials = SplashScreenEssentials();

  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigate);
  }
  navigate() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
  }
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height/50,
          ),
          LogoTitle(),
          SizedBox(
            height: MediaQuery.of(context).size.height/50,
          ),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}
