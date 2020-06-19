import 'package:demo_test/Backend/Authentication.dart';
import 'package:demo_test/Views/LoginForm.dart';
import 'package:demo_test/Widgets/EntryFields.dart';
import 'package:demo_test/Widgets/LogoTitle.dart';
import 'package:demo_test/Widgets/Style.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Style _style = Style();
  Authentication auth = Authentication();

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
          LoginForm()
        ],
      ),
    );
  }
}
