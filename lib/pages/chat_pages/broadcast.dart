import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget_component/contact_list.dart';

class Broadcast extends StatefulWidget {
  const Broadcast({super.key});

  @override
  State<Broadcast> createState() => _BroadcastState();
}

class _BroadcastState extends State<Broadcast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 7, 72, 66),
        title: const Text("New Broadcast"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15),
            child: Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ContactList(contactName: "Dilip kumar", bio: "Available"),
            ContactList(contactName: "Another guy", bio: "I am king"),
            ContactList(contactName: "Iron man", bio: "Universe"),
            ContactList(contactName: "Just man", bio: "Available"),
            ContactList(contactName: "Dilip kumar", bio: "Available"),
            ContactList(contactName: "Another guy", bio: "I am king"),
            ContactList(contactName: "Iron man", bio: "Universe"),
            ContactList(contactName: "Just man", bio: "Available"),
            ContactList(contactName: "Dilip kumar", bio: "Available"),
            ContactList(contactName: "Another guy", bio: "I am king"),
            ContactList(contactName: "Iron man", bio: "Universe"),
            ContactList(contactName: "Just man", bio: "Available"),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 7, 72, 66),
            borderRadius: BorderRadius.circular(10)),
        child: const Icon(
          Icons.done,
          color: Colors.white,
        ),
      ),
    );
  }
}
