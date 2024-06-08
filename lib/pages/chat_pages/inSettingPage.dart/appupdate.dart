import 'package:flutter/material.dart';

class AppUpdate extends StatefulWidget {
  const AppUpdate({super.key});

  @override
  State<AppUpdate> createState() => _AppUpdateState();
}

class _AppUpdateState extends State<AppUpdate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App update"),
      ),
    );
  }
}
