import 'package:flutter/material.dart';
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
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/logo2.png'),
            SizedBox(
              height: 60.0,
            ),
            UserInput(
              labelText: 'OTP',
              hintText: 'Enter your OTP',
            ),
            SizedBox(
              height: 10.0,
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
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
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
