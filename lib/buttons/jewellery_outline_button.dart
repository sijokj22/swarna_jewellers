import 'package:flutter/material.dart';
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
      padding: EdgeInsets.only(right: 10.0),
      child: GestureDetector(
        onTap: () {
          onPressed(jewelleryType);
        },
        child: Container(
          width: 90,
          decoration: BoxDecoration(
            color: (jewelleryType == selectedJewelleryType)
                ? Color(0xffa5302e)
                : Colors.transparent,
            border: Border.all(
              color: Color(0xffa5302e),
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
