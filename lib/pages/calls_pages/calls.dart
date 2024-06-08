import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/chat_pages/home_setting.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 7, 72, 66),
        title: const Text("Calls"),
        actions: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: Icon(Icons.camera_alt_outlined),
          ),
          const Icon(Icons.search),
          PopupMenuButton(
            onSelected: (value) {
              switch (value) {
                case 2:
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeSetting(),
                  ));
                  break;
                default:
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 1,
                child: Text("Clear call log"),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text("Settings"),
              ),
            ],
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Container(
                  height: 46,
                  width: 46,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      color: const Color.fromARGB(255, 7, 72, 66)),
                  child: const Icon(
                    Icons.link,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Create call link",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "share a link for your WhatsApp call",
                        style:
                            TextStyle(color: Color.fromARGB(255, 92, 94, 95)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text("Recent"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 46,
                              width: 46,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                  color: Colors.black),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  Text("Person name"),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.call_received,
                                        size: 15,
                                        color: Color.fromARGB(255, 7, 72, 66),
                                      ),
                                      Text(
                                        "Today, 12:00",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 92, 94, 95)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.video_call_outlined,
                              size: 30,
                              color: Color.fromARGB(255, 7, 72, 66),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class Iocns {}
