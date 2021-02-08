import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swarna_jewellers/common/enum.dart';

import '../styles.dart';

class JewelleryOutlineButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  final JewelleryType jewelleryType;
  final JewelleryType selectedJewelleryType;

  JewelleryOutlineButton(
      {this.buttonText,
      this.onPressed,
      this.jewelleryType,
      this.selectedJewelleryType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: Get.width * 0.05),
      child: GestureDetector(
        onTap: () {
          onPressed(jewelleryType);
        },
        child: Container(
          width: Get.width * 0.26,
          decoration: BoxDecoration(
            color: (jewelleryType == selectedJewelleryType)
                ? Color(0xffa5302e)
                : Colors.transparent,
            border: Border.all(
              color: Color(0xffa5302e),
            ),
            borderRadius: BorderRadius.circular(Get.width * 0.03),
          ),
          child: Padding(
            padding: EdgeInsets.all(Get.width * 0.02),
            child: Center(
              child: Text(
                buttonText,
                style: kJewelleryButtonStyle.copyWith(
                    color: (jewelleryType == selectedJewelleryType)
                        ? Colors.white
                        : Colors.black,
                    fontSize: 16.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
