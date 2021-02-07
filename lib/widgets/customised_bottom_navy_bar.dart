import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomisedBottomNavyBar extends StatefulWidget {

  @override
  _CustomisedBottomNavyBarState createState() => _CustomisedBottomNavyBarState();
}

class _CustomisedBottomNavyBarState extends State<CustomisedBottomNavyBar> {
   int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      selectedIndex: index,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => this.index = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(
            Icons.apps,
            size: 30.0,
          ),
          title: Text('Instagram'),
          activeColor: Color(0xffC0C0C0),
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(
            Icons.explore,
            size: 30.0,
          ),
          title: Text('Users'),
          activeColor: Color(0xffC0C0C0),
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(
            Icons.chat,
            size: 30.0,
          ),
          title: Text('Chat'),
          activeColor: Color(0xffC0C0C0),
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(
            Icons.account_circle,
            size: 30.0,
          ),
          title: Text('Profile'),
          activeColor: Color(0xffC0C0C0),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
