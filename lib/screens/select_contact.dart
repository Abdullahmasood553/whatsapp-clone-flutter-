import 'package:chat_app_socket/custom_ui/ButtonCard.dart';
import 'package:chat_app_socket/custom_ui/ContactCard.dart';
import 'package:chat_app_socket/model/chat.dart';
import 'package:chat_app_socket/screens/create_group.dart';
import 'package:flutter/material.dart';

class SelectContactScreen extends StatefulWidget {
  const SelectContactScreen({super.key});

  @override
  State<SelectContactScreen> createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContactScreen> {
  @override
  Widget build(BuildContext context) {
    List<Chat> contacts = [
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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff128C7E),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Select Contact",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "256 Contact",
                style: TextStyle(fontSize: 13),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 26,
              ),
            ),
            PopupMenuButton<String>(
              onSelected: (value) {
                print(value);
              },
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem(
                    value: "Invite a friend",
                    child: Text(
                      "Invite a friend",
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
        body: ListView.builder(
          itemCount: contacts.length + 2,
          itemBuilder: (context, index) => index == 0
              ? InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => const CreateGroupScreen(),
                      ),
                    );
                  },
                  child: const ButtonCard(
                    icon: Icons.group,
                    name: "New Group",
                  ),
                )
              : index == 1
                  ? const ButtonCard(
                      icon: Icons.person_add,
                      name: "New Contact",
                    )
                  : ContactCard(
                      argument: contacts[index - 2],
                    ),
        ));
  }
}
