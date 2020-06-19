import 'package:flutter/material.dart';

class Style {

  TextStyle basic(BuildContext context,[Color color = Colors.black]) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.width/25,
      color: color,
    );
  }


  TextStyle labels(BuildContext context,[Color color = Colors.black]) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.width/25,
      color: color,
    );
  }
}