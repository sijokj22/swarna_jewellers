import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomisedCircleAvatar extends StatelessWidget {
  final String imageAddress;
  final String circleAvatarName;

  CustomisedCircleAvatar({this.imageAddress, this.circleAvatarName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imageAddress),
          backgroundColor: Colors.white,
        ),
        SizedBox(
          height: Get.height * 0.015,
        ),
        Text(
          circleAvatarName,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontFamily: 'Raleway',
          ),
        )
      ],
    );
  }
}
