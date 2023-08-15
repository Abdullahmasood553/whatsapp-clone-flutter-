import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {
  final String name;
  final IconData icon;
  const ButtonCard({super.key, required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 23,
        backgroundColor: const Color(0xff25D066),
        child: Icon(
          icon,
          color: Colors.white,
          size: 23,
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
