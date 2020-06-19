import 'package:demo_test/Widgets/Style.dart';
import 'package:flutter/material.dart';

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
        obscureText: obscure,
      ),
    );
  }
}

