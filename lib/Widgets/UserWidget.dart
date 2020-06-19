import 'package:demo_test/Backend/GetUserData.dart';
import 'package:demo_test/Models/UserData.dart';
import 'package:demo_test/Widgets/Style.dart';
import 'package:flutter/material.dart';

class UserWidget extends StatefulWidget {
  UserData userData;
  UserWidget(this.userData);
  @override
  _UserWidgetState createState() => _UserWidgetState(userData);
}

class _UserWidgetState extends State<UserWidget> {

  UserData userData;
  _UserWidgetState(this.userData);
  Style _style = Style();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Icon(Icons.person,size: MediaQuery.of(context).size.width/15,color: Colors.blue,),
        title: Text(userData.name,style : _style.basic(context)),
      ),
    );
  }
}
