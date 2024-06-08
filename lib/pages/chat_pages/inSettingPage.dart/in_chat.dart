import 'package:flutter/material.dart';

class InChat extends StatefulWidget {
  const InChat({super.key});

  @override
  State<InChat> createState() => _InChatState();
}

class _InChatState extends State<InChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat"),
      ),
    );
  }
}
