import 'package:chat_app_socket/model/chat.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final Chat argument;
  const ContactCard({super.key, required this.argument});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 50,
        width: 50,
        child: Stack(
          children: [
            CircleAvatar(
              radius: 23,
              backgroundColor: Colors.blueGrey.shade200,
              child: const Icon(
                Icons.person,
                color: Colors.white,
                size: 23,
              ),
            ),
            argument.select
                ? const Positioned(
                    bottom: 4,
                    right: 5,
                    child: CircleAvatar(
                      backgroundColor: Colors.teal,
                      radius: 11,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
      title: Text(
        argument.name,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        argument.status!,
        style: const TextStyle(fontSize: 13),
      ),
    );
  }
}
