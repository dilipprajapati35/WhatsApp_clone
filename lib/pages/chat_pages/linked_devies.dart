import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget_component/contact_list.dart';

class LinkedDevies extends StatefulWidget {
  const LinkedDevies({super.key});

  @override
  State<LinkedDevies> createState() => _LinkedDeviesState();
}

class _LinkedDeviesState extends State<LinkedDevies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 72, 66),
        title: const Text("Linked devies"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 150,
                          width: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child:
                                Image.asset("assets/images/linked_devies.jpg"),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Column(
                        children: const [
                          Text("Use WhatsApp on Web, Desktop, and other"),
                          Text("devies. Learn more")
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Row(
                    children: [
                      Container(
                        width: 250,
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 7, 72, 66),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Center(
                          child: Text(
                            "Link devices",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: const [Text("Devies status")],
                ),
                const SizedBox(height: 5),
                Row(
                  children: const [Text("Tap a devies to log out.")],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.green),
                  child: const Icon(Icons.window_rounded),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Window",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16)),
                    Text("Last actice yesterday at 13:00",
                        style:
                            TextStyle(color: Color.fromARGB(255, 92, 94, 95)))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
