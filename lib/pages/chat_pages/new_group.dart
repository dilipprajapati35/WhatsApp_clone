import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget_component/contact_list.dart';

class NewGroup extends StatefulWidget {
  const NewGroup({super.key});

  @override
  State<NewGroup> createState() => _NewGroupState();
}

class _NewGroupState extends State<NewGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 7, 72, 66),
        title: const Text("New group"),
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
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Text(
                    "Contacts on whatsapp",
                    style: TextStyle(color: Color.fromARGB(255, 92, 94, 95)),
                  )
                ],
              ),
            ),
            Column(
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
            )
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
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
