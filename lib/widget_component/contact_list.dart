import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  final String contactName;
  final String bio;

  const ContactList({required this.contactName, required this.bio, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 0, 0),
                borderRadius: BorderRadius.all(Radius.circular(25))),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(contactName,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
            Text(bio,
                style: const TextStyle(color: Color.fromARGB(255, 92, 94, 95)))
          ],
        )
      ],
    );
  }
}
