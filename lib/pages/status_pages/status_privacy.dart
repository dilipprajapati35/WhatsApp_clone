import 'package:flutter/material.dart';

class StatusPrivacy extends StatefulWidget {
  const StatusPrivacy({super.key});

  @override
  State<StatusPrivacy> createState() => _StatusPrivacyState();
}

class _StatusPrivacyState extends State<StatusPrivacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 7, 72, 66),
        title: const Text("Status privacy"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: const [Text("Who can see my status updates")],
            ),
          )
        ],
      ),
    );
  }
}
