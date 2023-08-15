import 'package:chat_app_socket/model/chat.dart';
import 'package:chat_app_socket/screens/individual_screen.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Chat chat;
  const CustomCard({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IndividualScreen(argument: chat),
          ),
        );
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 30,
              child: Icon(
                chat.isGroup ? Icons.groups : Icons.person,
                size: 30,
                color: Colors.white,
              ),
            ),
            title: Text(
              chat.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                const Icon(Icons.done_all),
                const SizedBox(width: 3),
                Text(
                  chat.currentMessage!,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            trailing: Text(chat.time!),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20, left: 80),
            child: Divider(thickness: 1),
          ),
        ],
      ),
    );
  }
}
