import 'package:flutter/material.dart';
import 'package:swarna_jewellers/screens/camera_page.dart';
import 'package:swarna_jewellers/screens/shopping_cart.dart';
import 'package:swarna_jewellers/styles.dart';

class JewelleryContainers extends StatefulWidget {
  final String image1Address;
  final String image2Address;
  final String jewellery1Name;
  final String jewellery2Name;

  JewelleryContainers(
      {this.image1Address,
      this.image2Address,
      this.jewellery1Name,
      this.jewellery2Name});

  @override
  _JewelleryContainersState createState() => _JewelleryContainersState();
}

class _JewelleryContainersState extends State<JewelleryContainers> {
  bool onPressed1 = false;
  bool onPressed2 = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.35,
          width: MediaQuery.of(context).size.width * 0.49,
          color: Colors.grey[200],
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShoppingCart()));
                  },
                  child: Image(
                    image: AssetImage(widget.image1Address),
                  ),
                ),
              ),
              Positioned(
                top: 10.0,
                right: 10.0,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      onPressed1 = !onPressed1;
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    color: onPressed1 ? Colors.red : Color(0XFFB5ADAD),
                    size: 30.0,
                  ),
                ),
              ),
              Positioned(
                bottom: 10.0,
                right: 10.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CameraPage()));
                  },
                  child: Icon(
                    Icons.camera_alt,
                    color: Color(0xffa5302e),
                  ),
                ),
              ),
              Positioned(
                bottom: 10.0,
                left: 10.0,
                child: Text(
                  'Swarna \n22k Gold ${widget.jewellery1Name}',
                  style: kJewelleryTextStyle,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.35,
          width: MediaQuery.of(context).size.width * 0.48,
          color: Colors.grey[200],
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShoppingCart()));
                  },
                  child: Image(
                    image: AssetImage(widget.image2Address),
                  ),
                ),
              ),
              Positioned(
                top: 10.0,
                right: 10.0,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      onPressed2 = !onPressed2;
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    size: 30.0,
                    color: onPressed2 ? Colors.red : Color(0XFFB5ADAD),
                  ),
                ),
              ),
              Positioned(
                bottom: 10.0,
                right: 10.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CameraPage()));
                  },
                  child: Icon(
                    Icons.camera_alt,
                    color: Color(0xffa5302e),
                  ),
                ),
              ),
              Positioned(
                bottom: 10.0,
                left: 10.0,
                child: Text(
                  'Swarna \n22k Gold ${widget.jewellery2Name}',
                  style: kJewelleryTextStyle,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
