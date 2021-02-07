import 'package:flutter/material.dart';
import 'package:swarna_jewellers/screens/camera_page.dart';

class JewelleryContainer extends StatelessWidget {
  final String jewelleryImageAdd;
  final String jewelleryName;

  JewelleryContainer({this.jewelleryImageAdd, this.jewelleryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CameraPage()));
      },
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.width * 0.03,
        ),
        child: Container(
          color: Colors.grey[200],
          width: double.infinity,
          height: MediaQuery.of(context).size.width * 0.3,
          child: Row(
            children: [
              Expanded(child: Image.asset(jewelleryImageAdd)),
              Expanded(
                child: Text(
                  'Swarna\n22k $jewelleryName',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6A696A),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
