import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swarna_jewellers/widgets/CustomisedBottomNavigationBar.dart';
import 'package:swarna_jewellers/widgets/customised_bottom_navy_bar.dart';
import 'package:swarna_jewellers/widgets/image_container.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0.0,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: CustomisedBottomNavigationBar(),
      body: Stack(
        children: [
          Container(
            //width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ImageContainer(
                  imageAddress: 'images/background1.png',
                  descriptionText:
                      'choose from our wide range of jewellery collection...',
                  outlineButtonText: 'Explore More',
                ),
                ImageContainer(
                  imageAddress: 'images/background2.png',
                  descriptionText:
                      'Subscribe to our gold schemes And take your jewellery home',
                  outlineButtonText: 'Explore More',
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: Get.height * 0.23,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(Get.width * 0.06),
                  bottomRight: Radius.circular(Get.width * 0.06),
                )),
            child: Image.asset('images/logo2.png'),
          ),
        ],
      ),
    );
  }
}
