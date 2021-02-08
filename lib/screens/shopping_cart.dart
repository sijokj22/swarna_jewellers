import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:swarna_jewellers/common/constants.dart';
import 'package:swarna_jewellers/screens/try_on.dart';
import 'package:swarna_jewellers/widgets/customised_carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../styles.dart';
import 'camera_page.dart';
import 'package:get/get.dart';

class ShoppingCart extends StatefulWidget {
  static String id = 'shopping_cart';
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  double rating = 0;
  bool _onPressed = false;
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        shadowColor: null,
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                      aspectRatio: 16 / 9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      scrollDirection: Axis.horizontal,
                      height: Get.height * 0.3,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                  items: [
                    Image.asset(
                      'images/jewelleries/jewellery4.png',
                      fit: BoxFit.fitHeight,
                    ),
                    Image.asset(
                      'images/jewelleries/jewellery4.png',
                      fit: BoxFit.fitHeight,
                    ),
                    Image.asset(
                      'images/jewelleries/jewellery4.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ],
                ),
                Positioned(
                  bottom: Get.width * 0.0,
                  child: Container(
                    width: Get.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [1, 2, 3].map((index) {
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                _current == index ? Colors.black : Colors.grey,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Container(
              width: double.infinity,
              height: Get.height * 0.55,
              color: Color(0XFFF7F6F6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: Get.width * .03),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SmoothStarRating(
                                    allowHalfRating: false,
                                    onRated: (v) {
                                      print('triggered');
                                    },
                                    starCount: 5,
                                    rating: rating,
                                    size: Get.width * 0.095,
                                    isReadOnly: false,
                                    filledIconData: Icons.star,
                                    halfFilledIconData: Icons.star_half_sharp,
                                    color: Color(0XFFE9CC5B),
                                    borderColor: Color(0XFFE9CC5B),
                                    spacing: Get.width * 0.01),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: Get.width * 0.02),
                                  child: Text(
                                    '4 Reviews',
                                    style: kSignUpTitlesStyle,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.share,
                                  size: MediaQuery.of(context).size.width * 0.1,
                                  color: Color(0XFFA5302E),
                                ),
                                SizedBox(
                                  width: Get.width * 0.03,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(
                                      () {
                                        _onPressed = !_onPressed;
                                      },
                                    );
                                  },
                                  child: Icon(
                                    _onPressed
                                        ? Icons.favorite_border_sharp
                                        : Icons.favorite,
                                    size:
                                        MediaQuery.of(context).size.width * 0.1,
                                    color: Color(0XFFA5302E),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Get.width * 0.1,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: Get.width * .03),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '22K Gold Earring',
                                style: kTermsTextStyle.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26.0,
                                    letterSpacing: 4.0),
                              ),
                            ),
                            Text(
                              'Product Details | Certifications',
                              style: kSignUpTitlesStyle.copyWith(
                                  letterSpacing: 0.5),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Get.width * 0.05,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: Get.width * .03),
                        child: Container(
                          width: double.infinity,
                          height: Get.height * 0.2454,
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Text(
                              kDescriptionText,
                              style: kSignUpTitlesStyle.copyWith(
                                color: Color(0XFF9C9C9C),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: Get.height * 0.0788,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CameraPage()));
                            },
                            color: Color(0XFFA5302E),
                            child: Container(
                              height: Get.height * 0.08,
                              child: Center(
                                child: Text(
                                  'Try Now',
                                  style: kJewelleryButtonStyle,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Expanded(
                        child: Container(
                          height: Get.height * 0.0788,
                          child: RaisedButton(
                            onPressed: () {},
                            color: Color(0XFFA5302E),
                            child: Container(
                              height: Get.height * 0.08,
                              child: Center(
                                child: Text(
                                  'Enquire Now',
                                  style: kJewelleryButtonStyle,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
