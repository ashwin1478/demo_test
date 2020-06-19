import 'package:demo_test/Widgets/Style.dart';
import 'package:flutter/material.dart';


class LogoTitle extends StatefulWidget {
  @override
  _LogoTitleState createState() => _LogoTitleState();
}

class _LogoTitleState extends State<LogoTitle> {

  Style _style = Style();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("JUST FOR FUN",style: _style.basic(context)),
      ),
    );
  }
}
