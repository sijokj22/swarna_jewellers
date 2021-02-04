import 'package:flutter/material.dart';
import 'package:swarna_jewellers/buttons/button.dart';
import 'package:swarna_jewellers/screens/otp_screen.dart';
import 'package:swarna_jewellers/styles.dart';
import 'package:swarna_jewellers/widgets/UserInput.dart';

class SignupPage extends StatefulWidget {
  static String id = 'signup_page';
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('images/logo2.png'),
                SizedBox(
                  height: 60.0,
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                UserInput(
                  labelText: 'Name',
                  hintText: 'Your name here',
                ),
                SizedBox(
                  height: 30.0,
                ),
                UserInput(
                  labelText: 'Mobile Number',
                  hintText: 'Enter your Mobile Number here',
                  textInputType: TextInputType.number,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      activeColor: Color(0xffa5302e),
                      value: value,
                      onChanged: (bool value) {
                        setState(() {
                          this.value = value;
                        });
                      },
                    ),
                    Expanded(
                      child: Text(
                        'I agree to the Terms of Services and Privacy Policies',
                        overflow: TextOverflow.clip,
                        style: kTermsTextStyle,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Button(
                  buttonText: 'Get OTP',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OtpScreen(),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
