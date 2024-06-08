import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/chat_pages/new_group.dart';
import 'package:flutter_application_1/pages/chat_pages/newcontact.dart';
import 'package:flutter_application_1/widget_component/contact_list.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({super.key});

  @override
  State<SelectContact> createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 7, 72, 66),
        title: const Text("Select contact"),
        actions: [
          const Icon(Icons.search),
          PopupMenuButton(
              itemBuilder: (context) => [
                    const PopupMenuItem(
                        value: 1, child: Text("Invite a friend")),
                    const PopupMenuItem(value: 2, child: Text("Contacts")),
                    const PopupMenuItem(value: 3, child: Text("Refresh")),
                    const PopupMenuItem(value: 4, child: Text("Help")),
                  ]),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewGroup()),
                  );
                },
                child: Row(
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(25)),
                        child: Icon(Icons.group_add)),
                    const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text("New group",
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16)),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NewContact()),
                  );
                },
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(25)),
                          child: const Icon(Icons.person_add),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text("New contact",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Row(
                      children: const [
                        Icon(Icons.qr_code),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NewGroup()),
                  );
                },
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(25)),
                      child: const Icon(Icons.group),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text("New community",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("Contacts on WhatsApp"),
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
    );
  }
}
