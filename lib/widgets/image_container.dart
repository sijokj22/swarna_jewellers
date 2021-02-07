import 'package:flutter/material.dart';
import 'package:swarna_jewellers/screens/explore_screen.dart';
import 'package:swarna_jewellers/styles.dart';

class ImageContainer extends StatelessWidget {
  final String imageAddress;
  final String descriptionText;
  final String outlineButtonText;

  const ImageContainer(
      {this.imageAddress, this.descriptionText, this.outlineButtonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height * 1.5,
      height: MediaQuery.of(context).size.height * 0.299,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(imageAddress),
        fit: BoxFit.cover,
      )),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                descriptionText,
                style: kDescriptionTextStyle,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            OutlineButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExploreScreen()),
                );
              },
              borderSide: BorderSide(
                color: Colors.white,
              ),
              child: Text(
                outlineButtonText,
                style: kOutlineButtonTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
