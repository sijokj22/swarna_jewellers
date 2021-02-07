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
      body: Column(
        children: [
          CustomisedCarouselSlider(
            image1Name: 'images/bangles.jpg',
          ),
          SizedBox(
            height: Get.width * 0.05,
          ),
          Container(
            width: double.infinity,
            height: Get.height * 0.56991,
            color: Color(0XFFF7F6F6),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * .03),
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
                            padding: EdgeInsets.only(left: Get.width * 0.02),
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
                            size: 40.0,
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
                              size: MediaQuery.of(context).size.width * 0.12,
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
                  padding: EdgeInsets.symmetric(horizontal: Get.width * .03),
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
                        style: kSignUpTitlesStyle.copyWith(letterSpacing: 0.5),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.width * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * .03),
                  child: Container(
                    width: double.infinity,
                    height: Get.width * 0.48,
                    child: SingleChildScrollView(
                      child: Text(
                        kDescriptionText,
                        style: kSignUpTitlesStyle.copyWith(
                          color: Color(0XFF9C9C9C),
                        ),
                      ),
                    ),
                  ),
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
                            height: 48,
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
                            height: 48,
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
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Padding(
          //       padding: EdgeInsets.only(top: 10.0, right: 10.0, left: 10.0),
          //       child: Column(
          //         children: [
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //             children: [
          //               Padding(
          //                 padding: const EdgeInsets.only(top: 8.0),
          //                 child: Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     RatingBar.builder(
          //                       initialRating: _rating,
          //                       minRating: 1,
          //                       direction: Axis.horizontal,
          //                       allowHalfRating: false,
          //                       itemCount: 5,
          //                       itemSize: 25.0,
          //                       itemPadding:
          //                       EdgeInsets.symmetric(horizontal: 4.0),
          //                       itemBuilder: (context, _) => Icon(
          //                         Icons.star,
          //                         color: Color(0XFFE9CC5B),
          //                         size: 0.1,
          //                       ),
          //                       onRatingUpdate: (rating) {
          //                         print("Triggered");
          //                         setState(() {
          //                           _rating = rating;
          //                         });
          //                         print(_rating);
          //                       },
          //                     ),
          //                     SizedBox(
          //                       height: 0.0,
          //                     ),
          //                     Padding(
          //                       padding: EdgeInsets.only(left: 20.0),
          //                       child: Text(
          //                         '4 Reviews',
          //                         style: kSignUpTitlesStyle,
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //               Row(
          //                 children: [
          //                   Icon(
          //                     Icons.share,
          //                     size: 40.0,
          //                     color: Color(0XFFA5302E),
          //                   ),
          //                   SizedBox(
          //                     width: 10.0,
          //                   ),
          //                   Icon(
          //                     Icons.favorite_border_outlined,
          //                     size: MediaQuery.of(context).size.width * 0.12,
          //                     color: Color(0XFFA5302E),
          //                   ),
          //                 ],
          //               ),
          //             ],
          //           ),
          //           SizedBox(
          //             height: 20.0,
          //           ),
          //           Padding(
          //             padding: EdgeInsets.only(
          //                 left: MediaQuery.of(context).size.width * 0.05),
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.start,
          //               children: [
          //                 Text(
          //                   '22K Gold Earring',
          //                   style: kTermsTextStyle.copyWith(fontSize: 26.0),
          //                 ),
          //               ],
          //             ),
          //           ),
          //           SizedBox(
          //             height: 5.0,
          //           ),
          //           Padding(
          //             padding: EdgeInsets.only(
          //                 left: MediaQuery.of(context).size.width * 0.05),
          //             child: Row(
          //               children: [
          //                 Text(
          //                   'Product Details | ',
          //                   style: kSignUpTitlesStyle,
          //                 ),
          //                 Text(
          //                   'Certifications',
          //                   style: kSignUpTitlesStyle,
          //                 )
          //               ],
          //             ),
          //           ),
          //           SizedBox(
          //             height: 10.0,
          //           ),
          //           Padding(
          //             padding: EdgeInsets.only(
          //                 left: MediaQuery.of(context).size.width * 0.05),
          //             child: Container(
          //               //color: Colors.blue,
          //               height: MediaQuery.of(context).size.height * 0.2725,
          //               width: MediaQuery.of(context).size.width * 0.9,
          //               child: SingleChildScrollView(
          //                 child: Text(
          //                   kText,
          //                   style: kSignUpTitlesStyle.copyWith(
          //                       color: Color(0XFF9C9C9C)),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //     Row(
          //       children: [
          //         Expanded(
          //           child: RaisedButton(
          //             onPressed: () {
          //               Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                       builder: (context) => CameraPage()));
          //             },
          //             color: Color(0XFFA5302E),
          //             child: Container(
          //               height: 48,
          //               child: Center(
          //                 child: Text(
          //                   'Try Now',
          //                   style: kJewelleryButtonStyle,
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ),
          //         SizedBox(
          //           width: 5.0,
          //         ),
          //         Expanded(
          //           child: RaisedButton(
          //             onPressed: () {},
          //             color: Color(0XFFA5302E),
          //             child: Container(
          //               height: 48,
          //               child: Center(
          //                 child: Text(
          //                   'Enquire Now',
          //                   style: kJewelleryButtonStyle,
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
