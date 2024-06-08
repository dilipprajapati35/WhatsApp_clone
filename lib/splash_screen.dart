import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/authentication%20pages/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const WelcomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 249, 249, 249),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/WhatsappLogo.png",
                width: 80,
                height: 80,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "WhatsApp",
                style: TextStyle(color: Colors.green, fontSize: 24),
              )
            ],
          ),
        )));
  }
}
