import 'package:flutter/material.dart';

class InNotification extends StatefulWidget {
  const InNotification({super.key});

  @override
  State<InNotification> createState() => _InNotificationState();
}

class _InNotificationState extends State<InNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),
    );
  }
}
