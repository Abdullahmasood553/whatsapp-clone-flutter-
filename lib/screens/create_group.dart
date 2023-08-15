import 'package:chat_app_socket/custom_ui/AvatarCard.dart';
import 'package:chat_app_socket/custom_ui/ContactCard.dart';
import 'package:chat_app_socket/model/chat.dart';
import 'package:flutter/material.dart';

class CreateGroupScreen extends StatefulWidget {
  const CreateGroupScreen({super.key});

  @override
  State<CreateGroupScreen> createState() => _SelectContactState();
}

class _SelectContactState extends State<CreateGroupScreen> {
  List<Chat> contacts = [
    Chat(
      name: "Abdullah",
      icon: "person",
      isGroup: false,
      status: "Online",
    ),
    Chat(
      name: "Haseeb",
      icon: "person",
      isGroup: false,
      status: "Online",
    ),
    Chat(
      name: "Zuhaib",
      icon: "group",
      isGroup: true,
      status: "Online",
    ),
    Chat(
      name: "Ali",
      icon: "group",
      isGroup: true,
      status: "Online",
    ),
  ];

  List<Chat> groups = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff128C7E),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "New Group",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Add participants",
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
        ],
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: contacts.length + 1,
            itemBuilder: (context, index) => index == 0
                ? Container(
                    height: groups.isNotEmpty ? 90 : 10,
                  )
                : InkWell(
                    onTap: () {
                      if (!contacts[index - 1].select) {
                        setState(() {
                          contacts[index - 1].select = true;
                          groups.add(contacts[index - 1]);
                        });
                      } else {
                        setState(() {
                          contacts[index - 1].select = false;
                          groups.remove(contacts[index - 1]);
                        });
                      }
                    },
                    child: ContactCard(
                      argument: contacts[index - 1],
                    ),
                  ),
          ),
          groups.isNotEmpty
              ? Column(
                  children: [
                    Container(
                      height: 75,
                      color: Colors.white,
                      child: ListView.builder(
                        itemCount: contacts.length,
                        itemBuilder: (context, index) {
                          if (contacts[index].select) {
                            return InkWell(
                                onTap: () {
                                  setState(() {
                                    contacts[index].select = false;
                                    groups.remove(contacts[index]);
                                  });
                                },
                                child: AvatarCard(argument: contacts[index]));
                          } else {
                            return Container();
                          }
                        },
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    const Divider(thickness: 1),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
