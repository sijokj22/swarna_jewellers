import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:swarna_jewellers/main.dart';
import 'package:swarna_jewellers/widgets/my_bottom_naviagation_bar.dart';

class CameraPage extends StatefulWidget {
  static String id = 'camera_page';
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[1], ResolutionPreset.medium);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        titleSpacing: 50.0,
        title: Image.asset('images/logo3.png'),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      //bottomNavigationBar: BottomNavigationBar(),
      body: !controller.value.isInitialized
          ? Center(child: CircularProgressIndicator())
          : CameraPreview(controller),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
