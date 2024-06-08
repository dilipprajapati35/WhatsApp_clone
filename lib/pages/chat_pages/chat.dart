import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/chat_pages/broadcast.dart';
import 'package:flutter_application_1/pages/chat_pages/linked_devies.dart';
import 'package:flutter_application_1/pages/chat_pages/main_chat.dart';
import 'package:flutter_application_1/pages/chat_pages/new_group.dart';
import 'package:flutter_application_1/pages/chat_pages/payment.dart';
import 'package:flutter_application_1/pages/chat_pages/select_contact.dart';
import 'package:flutter_application_1/pages/chat_pages/starred_message.dart';

import 'package:flutter_application_1/widget_component/chat_card.dart';

import 'home_setting.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  bool isSearchOn = false;

  List chatArr = [
    {
      "name": "Hello",
      "rmess": "good morning",
    },
    {
      "name": "bye",
      "rmess": "good ",
    },
    {
      "name": "hi",
      "rmess": "night",
    },
    {
      "name": "mee",
      "rmess": "subah",
    },
    {
      "name": "johnss",
      "rmess": "late",
    },
    {
      "name": "ffdff",
      "rmess": "night",
    },
    {
      "name": "Khuman",
      "rmess": "Kitna hua dilip bro jaldi aja,smaja ya sanjau",
      "quan": "2",
    },
    {
      "name": "sammme",
      "rmess": "dilip bro jaldi aja,smaja ya sanjau",
      "quan": "2",
    },
    {
      "name": "jinnaa",
      "rmess": "smaja ya sanjau",
      "quan": "2",
    },
  ];
  void toggle() {
    setState(() {
      isSearchOn = !isSearchOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: isSearchOn ? null : const Text("WhatsApp"),
        backgroundColor: const Color.fromARGB(255, 7, 72, 66),
        elevation: 0.0,
        actions: [
          isSearchOn
              ? SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: IconButton(
                            onPressed: toggle,
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ))),
                  ),
                )
              : SizedBox(
                  child: Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(10),
                          child: const Icon(Icons.camera_alt)),
                      Container(
                          margin: const EdgeInsets.all(10),
                          child: IconButton(
                              onPressed: toggle,
                              icon: const Icon(Icons.search))),
                      PopupMenuButton(
                          onSelected: (value) {
                            switch (value) {
                              case 1:
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const NewGroup()));
                                break;
                              case 2:
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Broadcast()));
                                break;
                              case 3:
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const LinkedDevies()));
                                break;
                              case 4:
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const StarredMessage()));
                                break;
                              case 5:
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Payment()));
                                break;
                              case 6:
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const HomeSetting()));
                                break;
                              default:
                            }
                          },
                          itemBuilder: ((context) => [
                                const PopupMenuItem(
                                  value: 1,
                                  child: Text(
                                    "New group",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 2,
                                  child: Text(
                                    "New broadcast",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 3,
                                  child: Text(
                                    "Linked devices",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 4,
                                  child: Text(
                                    "Starred messages",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 5,
                                  child: Text(
                                    "Payments",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                const PopupMenuItem(
                                  value: 6,
                                  child: Text(
                                    "Settings",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ])),
                    ],
                  ),
                )
        ],
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MainChat()),
          );
        },
        child: ListView.builder(
          itemCount: chatArr.length,
          itemBuilder: (context, index) {
            return ChatCard(
              name: chatArr[index]['name'],
              message: chatArr[index]['rmess'],
              quan: chatArr[index]["quan"],
            );
          },
        ),
      ),
      floatingActionButton: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 7, 72, 66),
            borderRadius: BorderRadius.circular(10)),
        child: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const SelectContact()),
            );
          },
          icon: const Icon(
            Icons.add_comment_outlined,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
