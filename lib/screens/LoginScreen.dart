import 'package:chat_app_socket/custom_ui/ButtonCard.dart';
import 'package:chat_app_socket/model/chat.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List<Chat> chats = [
    Chat(
      id: 1,
      name: "Abdullah",
      icon: "person",
      isGroup: false,
      time: "4:00",
      currentMessage: "Hi Everyone",
      status: "Online",
    ),
    Chat(
      id: 2,
      name: "Haseeb",
      icon: "person",
      isGroup: false,
      time: "10:00",
      currentMessage: "Hi Haseeb",
      status: "Online",
    ),
    // Chat(
    //   name: "Zuhaib",
    //   icon: "group",
    //   isGroup: true,
    //   time: "12:00",
    //   currentMessage: "Hi Zuhaib",
    //   status: "Online",
    // ),
    // Chat(
    //   name: "Ali",
    //   icon: "group",
    //   isGroup: true,
    //   time: "8:00",
    //   currentMessage: "Hi Everyone",
    //   status: "Online",
    // ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {},
          child: ButtonCard(
            name: chats[index].name,
            icon: Icons.person,
          ),
        ),
      ),
    );
  }
}
