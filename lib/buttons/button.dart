import 'package:flutter/material.dart';

import '../styles.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  Button({this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        onPressed: onPressed,
        color: Color(0xffa5302e),
        child: Text(
          buttonText,
          style: kButtonTextStyle,
        ),
      ),
    );
  }
}
