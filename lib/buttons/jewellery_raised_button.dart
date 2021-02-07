import 'package:flutter/material.dart';
import '../styles.dart';

class JewelleryRaisedButton extends StatelessWidget {
  final String buttonText;

  JewelleryRaisedButton({this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RaisedButton(
        onPressed: () {},
        color: Colors.black,
        child: Container(
          height: 48,
          child: Center(
            child: Text(
              buttonText,
              style: kJewelleryButtonStyle,
            ),
          ),
        ),
      ),
    );
  }
}