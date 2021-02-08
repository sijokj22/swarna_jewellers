import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swarna_jewellers/buttons/button.dart';
import 'package:swarna_jewellers/screens/home_screen.dart';
import 'package:swarna_jewellers/widgets/UserInput.dart';

class OtpScreen extends StatefulWidget {
  static String id = 'otp_screen';
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.06,
          vertical: Get.height * 0.15,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/logo2.png'),
            SizedBox(
              height: Get.height * 0.08,
            ),
            UserInput(
              labelText: 'OTP',
              hintText: 'Enter your OTP',
            ),
            SizedBox(
              height: Get.height * 0.015,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  //onTap: ,
                  child: Text(
                    'Resend OTP',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 14.0,
                      color: Color(0xffa5302e),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.08,
            ),
            Button(
              buttonText: 'Verify',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    ));
  }
}
