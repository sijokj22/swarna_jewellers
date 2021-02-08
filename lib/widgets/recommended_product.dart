import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swarna_jewellers/screens/jewellery_page.dart';

class RecommendedProduct extends StatelessWidget {
  final String jewelleryName;
  final String imageName;

  RecommendedProduct({this.jewelleryName, this.imageName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => JewelleryPage()));
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.33,
        width: MediaQuery.of(context).size.width * 0.49,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            Get.width * 0.07,
          ),
          color: Colors.grey[200],
        ),
        child: Stack(
          children: [
            Image.asset('images/jewelleries/$imageName'),
            Positioned(
              bottom: 0.0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.49,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(Get.width * 0.07),
                    bottomLeft: Radius.circular(Get.width * 0.07),
                  ),
                ),
                child: RichText(
                  text: TextSpan(
                      text: 'SWARNA COLLECTIONS\n',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Raleway',
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: jewelleryName,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Raleway',
                          ),
                        )
                      ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
