import 'package:demo_test/Backend/Authentication.dart';
import 'package:demo_test/Widgets/Style.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

String email,pwd;

class _LoginFormState extends State<LoginForm> {

  Authentication auth = Authentication();
  Style _style = Style();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          EntryFields("Email", false),
          SizedBox(
            height: MediaQuery.of(context).size.height/70,
          ),
          EntryFields("Password", true),
          SizedBox(
            height: MediaQuery.of(context).size.height/50,
          ),
          RaisedButton(onPressed: (){auth.login(email, pwd, context);},
            child: Text('Submit',style: _style.basic(context),),)
        ],
      ),
    );
  }
}

class EntryFields extends StatefulWidget {
  String title;
  bool obscure;
  EntryFields(this.title,this.obscure);
  @override
  _EntryFieldsState createState() => _EntryFieldsState(title,obscure);
}

class _EntryFieldsState extends State<EntryFields> {

  Style style = Style();
  String title;
  bool obscure;
  _EntryFieldsState(this.title,this.obscure);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/20),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: title,
          labelStyle: style.labels(context),
        ),
        onChanged: (val){
          !obscure ? email = val : pwd = val;
          setState(() {

          });
        },
        obscureText: obscure,
      ),
    );
  }
}

