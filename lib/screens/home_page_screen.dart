import 'package:camera/camera.dart';
import 'package:chat_app_socket/pages/camera_page.dart';
import 'package:chat_app_socket/screens/chat_page_sceen.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  final List<CameraDescription> cameras; // Add this line

  const HomePageScreen({Key? key, required this.cameras}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController nameController = TextEditingController();
  late TabController _controller;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff128C7E),
        centerTitle: true,
        title: const Text('Group Chat App'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "New Group",
                  child: Text(
                    "New Group",
                  ),
                ),
                const PopupMenuItem(
                  value: "New broadcast",
                  child: Text(
                    "New Group",
                  ),
                ),
                const PopupMenuItem(
                  value: "New Group",
                  child: Text(
                    "Whats app web",
                  ),
                ),
                const PopupMenuItem(
                  value: "Starred Message",
                  child: Text(
                    "Starred messages",
                  ),
                ),
                const PopupMenuItem(
                  value: "Settings",
                  child: Text(
                    "Settings",
                  ),
                ),
              ];
            },
          )
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _controller,
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          CameraPage(
            cameras: widget.cameras,
          ), // Pass cameras list here
          const ChatPageScreen(),
          const Text("Status"),
          const Text("Calls"),
        ],
      ),
    );
  }
}
