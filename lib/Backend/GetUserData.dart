import 'package:demo_test/Models/UserData.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class GetUserData {

  Future<void> addUser(UserData user) async {
    await FirebaseDatabase.instance.reference().child("Users").child(user.uid).set(user.toJson()).catchError((e){
      print(e);
    });
}

}