import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/chat_pages/home_setting.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 7, 72, 66),
        title: const Text("Communities"),
        actions: [
          Container(
              margin: const EdgeInsets.all(10),
              child: const Icon(Icons.camera_alt)),
          PopupMenuButton(
              onSelected: (value) {
                switch (value) {
                  case 1:
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeSetting(),
                    ));
                    break;
                  default:
                }
              },
              itemBuilder: ((context) => [
                    const PopupMenuItem(
                      value: 1,
                      child: Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ])),
        ],
      ),
      body: ListView.builder(
        itemCount: 7, // Increased by 1 to include the "New Community" row
        itemBuilder: (context, index) {
          if (index == 0) {
            // The first item (New Community)
            return Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 92, 94, 95),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.group, color: Colors.white),
                  ),
                  const SizedBox(width: 15),
                  const Text(
                    "New Community",
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            );
          } else {
            // Community items
            return Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 92, 94, 95),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.group,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Text("Community Name",
                          style: TextStyle(fontSize: 17)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 7, 72, 66),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Icon(
                                Icons.announcement_outlined,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Announcements"),
                                Text("User: messages"),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 95,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text("5/4/2024"),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: const Color.fromARGB(255, 7, 72, 66),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 15),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 7, 72, 66),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Icon(
                                Icons.announcement_outlined,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Group Name"),
                                Text("User: messages"),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text("5/4/2024"),
                            Icon(
                              Icons.push_pin_outlined,
                              size: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 15),
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_forward),
                        SizedBox(width: 21),
                        Text("View all"),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
