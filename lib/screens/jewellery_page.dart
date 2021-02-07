import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swarna_jewellers/buttons/jewellery_outline_button.dart';
import 'package:swarna_jewellers/buttons/jewellery_raised_button.dart';
import 'package:swarna_jewellers/common/enum.dart';
import 'package:swarna_jewellers/screens/try_on.dart';
import 'package:swarna_jewellers/styles.dart';
import 'package:swarna_jewellers/widgets/CustomisedBottomNavigationBar.dart';
import 'package:swarna_jewellers/widgets/RateContainer.dart';
import 'package:swarna_jewellers/widgets/customised_bottom_navy_bar.dart';
import 'package:swarna_jewellers/widgets/customised_carousel_slider.dart';
import 'package:swarna_jewellers/widgets/jewellery_containers.dart';

class JewelleryPage extends StatefulWidget {
  static String id = 'jewellery_page';
  @override
  _JewelleryPageState createState() => _JewelleryPageState();
}

class _JewelleryPageState extends State<JewelleryPage> {
  int _currentIndex = 0;
  bool onPressed = false;
  JewelleryType selectedJewelleryType = JewelleryType.All;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        titleSpacing: 50.0,
        title: Image.asset('images/logo3.png'),
        elevation: 0.0,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => TryOn()));
              },
              child: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomisedBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomisedCarouselSlider(),
            RateContainer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                JewelleryRaisedButton(buttonText: 'SORT BY'),
                SizedBox(
                  width: 4.0,
                ),
                JewelleryRaisedButton(buttonText: 'FILTER BY'),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  JewelleryOutlineButton(
                    buttonText: 'All',
                    onPressed: (JewelleryType jewelleryType) {},
                    selectedJewelleryType: selectedJewelleryType,
                    jewelleryType: JewelleryType.All,
                  ),
                  JewelleryOutlineButton(
                    buttonText: 'Necklace',
                    onPressed: (JewelleryType jewelleryType) {
                      setState(() {
                        selectedJewelleryType = jewelleryType;
                      });
                    },
                    selectedJewelleryType: selectedJewelleryType,
                    jewelleryType: JewelleryType.Necklace,
                  ),
                  JewelleryOutlineButton(
                    buttonText: 'Earnings',
                    onPressed: (JewelleryType jewelleryType) {
                      setState(() {
                        selectedJewelleryType = jewelleryType;
                      });
                    },
                    selectedJewelleryType: selectedJewelleryType,
                    jewelleryType: JewelleryType.Earrings,
                  ),
                ],
              ),
            ),
            JewelleryContainers(
              jewellery1Name: 'Kada',
              jewellery2Name: 'Hara',
              image1Address: 'images/jewelleries/jewellery1.png',
              image2Address: 'images/jewelleries/jewellery2.png',
            ),
            SizedBox(
              height: 10.0,
            ),
            JewelleryContainers(
              jewellery1Name: 'Hara',
              jewellery2Name: 'EarRings',
              image1Address: 'images/jewelleries/jewellery3.png',
              image2Address: 'images/jewelleries/jewellery4.png',
            ),
            SizedBox(
              height: 10.0,
            ),
            JewelleryContainers(
              jewellery1Name: 'EarRings',
              jewellery2Name: 'EarRings',
              image1Address: 'images/jewelleries/jewellery5.png',
              image2Address: 'images/jewelleries/jewellery6.png',
            ),
            //SizedBox(height: 10.0,),
          ],
        ),
      ),
    );
  }
}
