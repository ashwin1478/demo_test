import 'package:demo_test/Models/UserData.dart';
import 'package:demo_test/Widgets/AddUserWidget.dart';
import 'package:demo_test/Widgets/LogoTitle.dart';
import 'package:demo_test/Widgets/MyAnimatedList.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  UserData userData;
  HomePage(this.userData);
  @override
  _HomePageState createState() => _HomePageState(userData);
}

class _HomePageState extends State<HomePage> {

  UserData userData;
  _HomePageState(this.userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height/50,
            ),
            LogoTitle(),
            SizedBox(
              height: MediaQuery.of(context).size.height/50,
            ),
            Container(
              height: MediaQuery.of(context).size.height*8/10,
              child: MyAnimatedList(),
            ),
            AddUserWidget(userData),
          ],
        ),
      ),
    );
  }
}
