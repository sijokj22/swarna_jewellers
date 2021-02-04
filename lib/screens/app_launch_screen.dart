import 'package:flutter/material.dart';

class AppLaunchScreen extends StatelessWidget {
  static String id='app_launch_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('images/logo.png'),
      ),
    );
  }
}
