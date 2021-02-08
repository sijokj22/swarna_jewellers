import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          height: Get.height * 0.08,
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
