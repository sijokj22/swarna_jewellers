import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:get/get.dart';
import 'package:swarna_jewellers/main.dart';

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
          : Column(
              children: [
                Expanded(
                  flex: 5,
                  child: CameraPreview(
                    controller,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: Get.height * 0.02),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.03,
                          right: MediaQuery.of(context).size.height * 0.13,
                        ),
                        child: BackButton(
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.074,
                        width: MediaQuery.of(context).size.height * 0.074,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.height * 0.074,
                            ),
                            color: Colors.red,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
