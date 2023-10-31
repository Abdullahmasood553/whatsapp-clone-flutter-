import 'package:chat_app_socket/custom_ui/own_message_card_screen.dart';
import 'package:chat_app_socket/custom_ui/reply_card_screen.dart';
import 'package:chat_app_socket/model/chat.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';

import 'package:socket_io_client/socket_io_client.dart' as IO;

class IndividualScreen extends StatefulWidget {
  final Chat argument;
  const IndividualScreen({super.key, required this.argument});

  @override
  State<IndividualScreen> createState() => _IndividualScreenState();
}

class _IndividualScreenState extends State<IndividualScreen> {
  late IO.Socket socket;

  @override
  void initState() {
    super.initState();
    connect();
  }

  void connect() {
    socket = IO.io("http://192.168.43.161:4000", <String, dynamic>{
      "transports": ["websocket"],
      "autoConnect": false,
    });
    socket.connect();
    socket.onConnect((data) => print("Connected"));
    print(socket.connected);
    socket.emit("/test", "Hello World");
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/background.png",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: AppBar(
              leadingWidth: 70,
              titleSpacing: 0,
              backgroundColor: const Color(0xff128C7E),
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      size: 24,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 20,
                      child: Icon(
                        widget.argument.isGroup ? Icons.groups : Icons.person,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              title: InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.all(6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.argument.name,
                        style: const TextStyle(
                          fontSize: 18.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Last Seen at 12:20",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.videocam),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.call),
                ),
                PopupMenuButton<String>(
                  onSelected: (value) {
                    print(value);
                  },
                  itemBuilder: (BuildContext context) {
                    return [
                      const PopupMenuItem(
                        value: "View Contact",
                        child: Text(
                          "View Contact",
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
            ),
          ),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height - 140,
                  child: ListView(
                    shrinkWrap: true,
                    children: const [
                      OwnMessageScreen(),
                      ReplyCardScreen(),
                      OwnMessageScreen(),
                      ReplyCardScreen(),
                      OwnMessageScreen(),
                      ReplyCardScreen(),
                      OwnMessageScreen(),
                      ReplyCardScreen(),
                      OwnMessageScreen(),
                      ReplyCardScreen(),
                      OwnMessageScreen(),
                      ReplyCardScreen(),
                      OwnMessageScreen(),
                      ReplyCardScreen(),
                      OwnMessageScreen(),
                      ReplyCardScreen(),
                      OwnMessageScreen(),
                      ReplyCardScreen(),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 60,
                            child: Card(
                              margin: const EdgeInsets.only(
                                left: 2,
                                right: 2,
                                bottom: 8,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.multiline,
                                maxLines: 5,
                                minLines: 1,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Type a message",
                                    contentPadding: const EdgeInsets.all(5),
                                    prefixIcon: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.emoji_emotions,
                                      ),
                                    ),
                                    suffixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            showModalBottomSheet(
                                                backgroundColor:
                                                    Colors.transparent,
                                                context: context,
                                                builder: (builder) =>
                                                    bottomSheet());
                                          },
                                          icon: const Icon(Icons.attach_file),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.camera_alt),
                                        )
                                      ],
                                    )),
                              ),
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 8.0,
                              right: 5.0,
                              left: 2.0,
                            ),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: const Color(0xff128C7E),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.mic,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // emojiSelect(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget emojiSelect() {
    return EmojiPicker(
      onEmojiSelected: (emoji, category) {
        print(emoji);
      },
    );
  }

  Widget bottomSheet() {
    return SizedBox(
      height: 278,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: const EdgeInsets.all(18),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconCreation(
                      Icons.insert_drive_file, Colors.indigo, "Document"),
                  const SizedBox(width: 40),
                  iconCreation(Icons.camera_alt, Colors.pink, "Camera"),
                  const SizedBox(width: 40),
                  iconCreation(Icons.insert_photo, Colors.purple, "Gallery"),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconCreation(Icons.headset, Colors.orange, "Audio"),
                  const SizedBox(width: 40),
                  iconCreation(Icons.location_pin, Colors.teal, "Location"),
                  const SizedBox(width: 40),
                  iconCreation(Icons.person, Colors.blue, "Contact"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget iconCreation(IconData icon, Color color, String text) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: color,
            child: Icon(
              icon,
              size: 29,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            text,
            style: const TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
