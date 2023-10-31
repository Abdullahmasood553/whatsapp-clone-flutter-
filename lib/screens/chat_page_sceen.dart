import 'package:chat_app_socket/custom_ui/custom_card.dart';
import 'package:chat_app_socket/model/chat.dart';
import 'package:chat_app_socket/screens/select_contact.dart';
import 'package:flutter/material.dart';

class ChatPageScreen extends StatefulWidget {
  const ChatPageScreen({super.key});

  @override
  State<ChatPageScreen> createState() => _ChatPageScreenState();
}

class _ChatPageScreenState extends State<ChatPageScreen> {
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
    Chat(
      id: 3,
      name: "Zuhaib",
      icon: "group",
      isGroup: true,
      time: "12:00",
      currentMessage: "Hi Zuhaib",
      status: "Online",
    ),
    Chat(
      id: 4,
      name: "Ali",
      icon: "group",
      isGroup: true,
      time: "8:00",
      currentMessage: "Hi Everyone",
      status: "Online",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (builder) => const SelectContactScreen()));
        },
        child: const Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(
          chat: chats[index],
        ),
      ),
    );
  }
}
