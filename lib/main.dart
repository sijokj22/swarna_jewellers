import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:swarna_jewellers/screens/app_launch_screen.dart';
import 'package:swarna_jewellers/screens/camera_page.dart';
import 'package:swarna_jewellers/screens/explore_screen.dart';
import 'package:swarna_jewellers/screens/home_screen.dart';
import 'package:swarna_jewellers/screens/jewellery_page.dart';
import 'package:swarna_jewellers/screens/otp_screen.dart';
import 'package:swarna_jewellers/screens/shopping_cart.dart';
import 'package:swarna_jewellers/screens/signup_page.dart';
import 'package:swarna_jewellers/screens/try_on.dart';

List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
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
        ExploreScreen.id: (context) => ExploreScreen(),
        JewelleryPage.id: (context) => JewelleryPage(),
        ShoppingCart.id: (context) => ShoppingCart(),
        TryOn.id: (context) => TryOn(),
        CameraPage.id: (context) => CameraPage(),
      },
    );
  }
}
