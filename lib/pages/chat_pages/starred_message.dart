import 'package:flutter/material.dart';

class StarredMessage extends StatefulWidget {
  const StarredMessage({super.key});

  @override
  State<StarredMessage> createState() => _StarredMessageState();
}

class _StarredMessageState extends State<StarredMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 7, 72, 66),
        title: const Text("Starred messages"),
        actions: [
          const Icon(Icons.search),
          PopupMenuButton(
            itemBuilder: (context) =>
                [const PopupMenuItem(child: Text("Unstar all"))],
          )
        ],
      ),
    );
  }
}
