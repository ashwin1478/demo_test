import 'package:demo_test/Backend/GetUserData.dart';
import 'package:demo_test/Models/UserData.dart';
import 'package:demo_test/Widgets/Style.dart';
import 'package:flutter/material.dart';

class AddUserWidget extends StatefulWidget {
  UserData userData;
  AddUserWidget(this.userData);
  @override
  _AddUserWidgetState createState() => _AddUserWidgetState(userData);
}

class _AddUserWidgetState extends State<AddUserWidget> {

  UserData userData;
  _AddUserWidgetState(this.userData);
  Style _style = Style();
  GetUserData _getUserData = GetUserData();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Icon(Icons.add,size: MediaQuery.of(context).size.width/15,color: Colors.blue,),
        title: Text("Add User",style : _style.basic(context)),
        onTap: (){_getUserData.addUser(userData);},
      ),
    );
  }
}
