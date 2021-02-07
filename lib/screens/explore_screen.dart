import 'package:flutter/material.dart';
import 'package:swarna_jewellers/screens/jewellery_page.dart';
import 'package:swarna_jewellers/screens/try_on.dart';
import 'package:swarna_jewellers/widgets/CustomisedBottomNavigationBar.dart';
import 'package:swarna_jewellers/widgets/RateContainer.dart';
import 'package:swarna_jewellers/widgets/customised_bottom_navy_bar.dart';
import 'package:swarna_jewellers/widgets/customised_carousel_slider.dart';
import 'package:swarna_jewellers/widgets/customized_circle_avatar.dart';
import 'package:swarna_jewellers/widgets/recommended_product.dart';

class ExploreScreen extends StatefulWidget {
  static String id = 'explore_screen';
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  int index = 0;
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
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'EXPLORE CATEGORIES',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CustomisedCircleAvatar(
                          circleAvatarName: 'Gold',
                          imageAddress: 'images/gold.jpg',
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        CustomisedCircleAvatar(
                          circleAvatarName: 'Diamond',
                          imageAddress: 'images/diamond.jpg',
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        CustomisedCircleAvatar(
                          circleAvatarName: 'Necklace',
                          imageAddress: 'images/Necklace.jpg',
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        CustomisedCircleAvatar(
                          circleAvatarName: 'Rings',
                          imageAddress: 'images/rings.jpg',
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        CustomisedCircleAvatar(
                          circleAvatarName: 'Bangles',
                          imageAddress: 'images/bangles.jpg',
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        CustomisedCircleAvatar(
                          circleAvatarName: 'Gold',
                          imageAddress: 'images/gold.jpg',
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        CustomisedCircleAvatar(
                          circleAvatarName: 'Diamond',
                          imageAddress: 'images/diamond.jpg',
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        CustomisedCircleAvatar(
                          circleAvatarName: 'Necklace',
                          imageAddress: 'images/Necklace.jpg',
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        CustomisedCircleAvatar(
                          circleAvatarName: 'Rings',
                          imageAddress: 'images/rings.jpg',
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        CustomisedCircleAvatar(
                          circleAvatarName: 'Bangles',
                          imageAddress: 'images/bangles.jpg',
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'RECOMMENDED PRODUCTS',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => JewelleryPage(),
                              ),
                            );
                          },
                          child: Text(
                            'View All',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 14.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffa5302e),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        RecommendedProduct(
                          imageName: 'jewellery4.png',
                          jewelleryName: 'The Jali Earrings',
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        RecommendedProduct(
                          imageName: 'jewellery5.png',
                          jewelleryName: 'The Pearl Earrings',
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        RecommendedProduct(
                          imageName: 'jewellery4.png',
                          jewelleryName: 'The Jali Earrings',
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        RecommendedProduct(
                          imageName: 'jewellery5.png',
                          jewelleryName: 'The Pearl Earrings',
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
