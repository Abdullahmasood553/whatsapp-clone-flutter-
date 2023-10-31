import 'package:flutter/material.dart';

class ReplyCardScreen extends StatefulWidget {
  const ReplyCardScreen({super.key});

  @override
  State<ReplyCardScreen> createState() => _ReplyCardScreenState();
}

class _ReplyCardScreenState extends State<ReplyCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          // color: const Color(0xffdcf8c6),
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
          child: Stack(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 60,
                  top: 5,
                  bottom: 20,
                ),
                child: Text(
                  "Hey dsfdsf sfsdfsf sfsdfdsfdsf sfdsfsdfsdf sdfdsfdsfds sfdsfsdfdsfdsfdsf sddfdsfdsf",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Text(
                  "20:09",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[600],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
