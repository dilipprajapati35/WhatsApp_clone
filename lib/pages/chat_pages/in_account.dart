import 'package:flutter/material.dart';

class InAccount extends StatefulWidget {
  const InAccount({super.key});

  @override
  State<InAccount> createState() => _InAccountState();
}

class _InAccountState extends State<InAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account"),
      ),
    );
  }
}
