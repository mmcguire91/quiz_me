import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({this.press, this.option, this.color, this.textColor});

  Function press;
  String option;
  Color color;
  Color textColor;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: press,
      color: Colors.lightBlue,
      textColor: Colors.white,
      child: Text(option),
    );
  }
}
