import 'package:camera/camera.dart';
import 'package:chat_app_socket/screens/home_page_screen.dart';
import 'package:flutter/material.dart';

late List<CameraDescription> _cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  _cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(fontFamily: "OpenSans"),
      debugShowCheckedModeBanner: false,
      home: HomePageScreen(cameras: _cameras),
    );
  }
}
