import 'package:demo_test/Views/LoginPage.dart';
import 'package:flutter/material.dart';


class SplashScreenEssentials {

   navigate(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
