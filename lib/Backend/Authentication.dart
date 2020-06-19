import 'package:demo_test/Models/UserData.dart';
import 'package:demo_test/Views/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authentication {

  Future<void> login(String email, String pwd, BuildContext context) async {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: pwd)
          .then((authResult){
            FirebaseUser firebaseUser = authResult.user;
            if(firebaseUser != null){
              print('Successful');
              UserData user = UserData(email: email,name: "Dummy",uid: firebaseUser.uid);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(user)));
            }
      }).catchError((e){
        print(e);
      });
  }

}