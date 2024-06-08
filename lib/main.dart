import 'package:flutter/material.dart';

import 'package:flutter_application_1/splash_screen.dart';

void main() {
  runApp(const MaterialApp(home: Myapp()));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SplashScreen());
  }
}
