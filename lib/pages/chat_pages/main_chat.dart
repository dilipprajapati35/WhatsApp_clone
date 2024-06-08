import 'package:flutter/material.dart';

class MainChat extends StatefulWidget {
  const MainChat({super.key});

  @override
  State<MainChat> createState() => _MainChatState();
}

class _MainChatState extends State<MainChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 72, 66),
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.black),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15, bottom: 15),
            child: Text(
              "Person name",
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          const Icon(Icons.video_call),
          const SizedBox(width: 20),
          const Icon(Icons.call),
          PopupMenuButton(
              itemBuilder: (context) => [
                    const PopupMenuItem(value: 1, child: Text("View contact")),
                    const PopupMenuItem(
                        value: 2, child: Text("Media, links, and docs")),
                    const PopupMenuItem(value: 3, child: Text("Search")),
                    const PopupMenuItem(
                        value: 4, child: Text("Mute notifications")),
                    const PopupMenuItem(
                        value: 5, child: Text("Disappearing messages")),
                    const PopupMenuItem(value: 6, child: Text("wallpaper")),
                    const PopupMenuItem(value: 7, child: Text("More")),
                  ]),
        ],
      ),
    );
  }
}
