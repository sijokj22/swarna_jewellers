import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:swarna_jewellers/styles.dart';
import 'package:swarna_jewellers/widgets/CustomisedBottomNavigationBar.dart';
import 'package:swarna_jewellers/widgets/customised_bottom_navy_bar.dart';
import 'package:swarna_jewellers/widgets/jewellery_container.dart';

import 'camera_page.dart';

class TryOn extends StatefulWidget {
  static String id = 'try_on';
  @override
  _TryOnState createState() => _TryOnState();
}

class _TryOnState extends State<TryOn> {
  String jewelleryAddress = 'images/jewellery2';
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        titleSpacing: Get.width * 0.16,
        title: Image.asset('images/logo3.png'),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: CustomisedBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              color: Colors.black,
              thickness: 0.5,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.03,
                right: MediaQuery.of(context).size.width * 0.03,
                top: MediaQuery.of(context).size.width * 0.08,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Wishlist',
                    style: TextStyle(
                      fontSize: 26.0,
                      fontFamily: 'Raleway',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CameraPage()));
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.camera_alt,
                          color: Color(0xffa5302e),
                        ),
                        SizedBox(
                          width: Get.width * 0.02,
                        ),
                        Text(
                          'Try All',
                          style: kSignUpTitlesStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.03,
              ),
              child: Column(
                children: [
                  JewelleryContainer(
                    jewelleryImageAdd: "$jewelleryAddress/jewellery1.png",
                    jewelleryName: 'Gold Haram',
                  ),
                  JewelleryContainer(
                    jewelleryImageAdd: "$jewelleryAddress/jewellery2.png",
                    jewelleryName: 'Gold Earrings',
                  ),
                  JewelleryContainer(
                    jewelleryImageAdd: "$jewelleryAddress/jewellery5.png",
                    jewelleryName: 'Diamond Earrings',
                  ),
                  JewelleryContainer(
                    jewelleryImageAdd: "$jewelleryAddress/jewellery4.png",
                    jewelleryName: 'Gold Mangalasuthra',
                  ),
                  JewelleryContainer(
                    jewelleryImageAdd: "$jewelleryAddress/jewellery5.png",
                    jewelleryName: 'Gold Bangles',
                  ),
                  JewelleryContainer(
                    jewelleryImageAdd: "$jewelleryAddress/jewellery1.png",
                    jewelleryName: 'Haram',
                  ),
                  JewelleryContainer(
                    jewelleryImageAdd: "$jewelleryAddress/jewellery2.png",
                    jewelleryName: 'Haram',
                  ),
                  JewelleryContainer(
                    jewelleryImageAdd: "$jewelleryAddress/jewellery5.png",
                    jewelleryName: 'Haram',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
