import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width * 0.06,
            vertical: Get.height * 0.13,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('images/logo2.png'),
              SizedBox(
                height: Get.height * 0.09,
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
                height: Get.height * 0.045,
              ),
              UserInput(
                labelText: 'Name',
                hintText: 'Your name here',
              ),
              SizedBox(
                height: Get.height * 0.045,
              ),
              UserInput(
                labelText: 'Mobile Number',
                hintText: 'Enter your Mobile Number here',
                textInputType: TextInputType.number,
              ),
              SizedBox(
                height: Get.height * 0.03,
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
                    child: RichText(
                      text: TextSpan(
                        text: 'I agree to the ',
                        style: kTermsTextStyle,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Terms of Services',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffa5302e),
                                fontFamily: 'Raleway'),
                          ),
                          TextSpan(text: ' and ', style: kTermsTextStyle),
                          TextSpan(
                            text: ' Privacy Policies ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xffa5302e),
                                fontFamily: 'Raleway'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Expanded(
                  //   child: Text(
                  //     'I agree to the Terms of Services and Privacy Policies',
                  //     style: kTermsTextStyle,
                  //   ),
                  // ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.045,
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
    );
  }
}
