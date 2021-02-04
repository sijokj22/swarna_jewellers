import 'package:flutter/material.dart';
import 'package:swarna_jewellers/styles.dart';

class UserInput extends StatelessWidget {
  final String labelText;
  final TextInputType textInputType;
  final String hintText;
  UserInput({this.labelText, this.textInputType, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      decoration: InputDecoration(
          labelText: labelText,
          labelStyle: kSignUpTitlesStyle,
          hintText: hintText),
    );
  }
}
