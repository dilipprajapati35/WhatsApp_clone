import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/calls_pages/calls.dart';
import 'package:flutter_application_1/pages/chat_pages/chat.dart';

import 'package:flutter_application_1/pages/communities_pages/community.dart';
import 'package:flutter_application_1/pages/status_pages/status_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
          controller.jumpToPage(value);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
            backgroundColor: Color.fromARGB(255, 7, 72, 66),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            label: 'Status',
            backgroundColor: Color.fromARGB(255, 7, 72, 66),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline_sharp),
            label: 'Communities',
            backgroundColor: Color.fromARGB(255, 7, 72, 66),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
            backgroundColor: Color.fromARGB(255, 7, 72, 66),
          ),
        ],
      ),
      body: PageView(
        controller: controller,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
          controller.jumpToPage(value);
        },
        children: const [
          Chat(),
          Status(),
          Community(),
          Calls(),
        ],
      ),
    );
  }
}
