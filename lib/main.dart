import 'package:flutter/material.dart';
import 'package:swarna_jewellers/screens/app_launch_screen.dart';
import 'package:swarna_jewellers/screens/home_screen.dart';
import 'package:swarna_jewellers/screens/otp_screen.dart';
import 'package:swarna_jewellers/screens/signup_page.dart';

void main() {
  runApp(SwarnaJewellers());
}

class SwarnaJewellers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SignupPage.id,
      routes: {
        AppLaunchScreen.id: (context) => AppLaunchScreen(),
        SignupPage.id: (context) => SignupPage(),
        OtpScreen.id: (context) => OtpScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
