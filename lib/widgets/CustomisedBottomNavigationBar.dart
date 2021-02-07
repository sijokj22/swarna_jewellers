import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomisedBottomNavigationBar extends StatefulWidget {
  @override
  _CustomisedBottomNavigationBarState createState() =>
      _CustomisedBottomNavigationBarState();
}

class _CustomisedBottomNavigationBarState
    extends State<CustomisedBottomNavigationBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Color(0xFFA5302E),
      unselectedItemColor: Colors.grey,
      unselectedIconTheme: IconThemeData(
        color: Colors.grey,
      ),
      //selectedLabelStyle: TextStyle(color: Colors.grey),
      showUnselectedLabels: true,
      //unselectedLabelStyle: TextStyle(color: Color(0xFFA5302E)),
      selectedIconTheme: IconThemeData(
        color: Color(0xFFA5302E),
      ),
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.instagram), label: "Instagram"),
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), label: "Profile"),
      ],
    );
  }
}
