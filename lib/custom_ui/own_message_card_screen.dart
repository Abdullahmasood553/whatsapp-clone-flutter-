import 'package:flutter/material.dart';

class OwnMessageScreen extends StatefulWidget {
  const OwnMessageScreen({super.key});

  @override
  State<OwnMessageScreen> createState() => _OwnMessageScreenState();
}

class _OwnMessageScreenState extends State<OwnMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          color: const Color(0xffdcf8c6),
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
                child: Row(
                  children: [
                    Text(
                      "20:09",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.done_all,
                      size: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
