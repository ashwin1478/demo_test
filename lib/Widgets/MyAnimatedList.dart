import 'package:demo_test/Models/UserData.dart';
import 'package:demo_test/Widgets/AddUserWidget.dart';
import 'package:demo_test/Widgets/UserWidget.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class MyAnimatedList extends StatefulWidget {
  @override
  _MyAnimatedListState createState() => _MyAnimatedListState();
}

class _MyAnimatedListState extends State<MyAnimatedList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FirebaseAnimatedList(
          query: FirebaseDatabase.instance.reference().child("Users"),
          physics: ClampingScrollPhysics(),
          itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation animation, int index){
            UserData userData = UserData.fromJson(snapshot.value);
            return UserWidget(userData);
          }),
    );
  }
}
