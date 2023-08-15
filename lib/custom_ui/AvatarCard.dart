import 'package:chat_app_socket/model/chat.dart';
import 'package:flutter/material.dart';

class AvatarCard extends StatelessWidget {
  final Chat argument;
  const AvatarCard({super.key, required this.argument});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
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
              const Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 11,
                  child: Icon(
                    Icons.clear,
                    color: Colors.white,
                    size: 13,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 2),
          Text(
            argument.name,
            style: const TextStyle(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
