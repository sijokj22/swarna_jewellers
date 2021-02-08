import 'package:flutter/material.dart';

class RateContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.09,
      color: Color(0xFFA5302E),
      child: Center(
        child: Text(
          'Today\'s Gold Rate:Rs.46,500/10gm',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            fontFamily: 'Raleway',
          ),
        ),
      ),
    );
  }
}
