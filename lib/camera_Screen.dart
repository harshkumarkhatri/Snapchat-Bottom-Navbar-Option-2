import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraScreen extends StatefulWidget {
  @override
  CameraScreenState createState() {
    return new CameraScreenState();
  }
}

class CameraScreenState extends State<CameraScreen> {
  // CameraController controller;

  // @override
  // void initState() {
  //   super.initState();
  //   gettingCameras();
  //   controller =
  //       new CameraController(widget.cameras[0], ResolutionPreset.medium);
  //   controller.initialize().then((_) {
  //     if (!mounted) {
  //       return;
  //     }
  //     setState(() {});
  //   });
  // }

  // void gettingCameras() async {
  //   widget.cameras = await availableCameras();
  // }

  // @override
  // void dispose() {
  //   controller?.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // if (!controller.value.isInitialized) {
    //   return new Container();
    // }
    return Scaffold(
      body: new Stack(
        children: [
          Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          // Container(
          //   width: 150,
          //   height: 150,
          //   child: ClipRect(
          //     child: OverflowBox(
          //       alignment: Alignment.center,
          //       child: FittedBox(
          //         fit: BoxFit.fitWidth,
          //         child: Container(
          //           width: 130,
          //           height: 130,
          //           child:
          //               // new CameraPreview(controller), // this is my CameraPreview
          //         ),
          //       ),
          //     ),
          //   ),
          // )
          SafeArea(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.keyboard_arrow_down,
                            color: Colors.white, size: 36),
                      ),
                      Column(
                        children: [
                          Container(
                            child: Text("Send To",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600)),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Text(
                                "Fiaz",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        // color: Colors.pink,
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Icon(Icons.rotate_right,
                                  color: Colors.white, size: 30),
                              SizedBox(height: 10),
                              Icon(Icons.flash_off,
                                  color: Colors.white, size: 30)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),
                      ),
                      // Icon(Icons.emoji_emotions, color: Colors.white)
                    ],
                  )
                ],
              ),
            ),
          ),
          SafeArea(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 24.0, left: 148),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),
                        child: Icon(Icons.emoji_emotions, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
