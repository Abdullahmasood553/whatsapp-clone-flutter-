import 'package:camera/camera.dart';
import 'package:chat_app_socket/screens/camera_screen.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatelessWidget {
  final List<CameraDescription> cameras; // Add this line

  const CameraPage({Key? key, required this.cameras}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CameraScreen(cameras: cameras); // Pass cameras here
  }
}
