import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class CustomisedCarouselSlider extends StatefulWidget {
  final String image1Name;
  final String image2Name;
  final image3Name;

  CustomisedCarouselSlider(
      {this.image1Name = 'images/Carousel.png',
      this.image2Name = 'images/Carousel.png',
      this.image3Name = 'images/Carousel.png'});

  @override
  _CustomisedCarouselSliderState createState() =>
      _CustomisedCarouselSliderState();
}

class _CustomisedCarouselSliderState extends State<CustomisedCarouselSlider> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              height: 190,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
          items: [
            Image.asset(
              CustomisedCarouselSlider().image1Name,
              fit: BoxFit.fitHeight,
            ),
            Image.asset(
              CustomisedCarouselSlider().image1Name,
              fit: BoxFit.fitHeight,
            ),
            Image.asset(
              CustomisedCarouselSlider().image1Name,
              fit: BoxFit.fitHeight,
            ),
          ],
        ),
        Positioned(
          bottom: 15,
          child: Container(
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [1, 2, 3].map((index) {
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.black : Colors.grey,
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
