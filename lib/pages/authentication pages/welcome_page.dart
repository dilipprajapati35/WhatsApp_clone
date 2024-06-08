import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/authentication%20pages/numberauthen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 72, 66),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 72, 66),
        elevation: 0,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) =>
                [const PopupMenuItem(child: Text("Help"))],
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0, top: 20),
            child: SizedBox(
              height: 260,
              width: 260,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(130),
                child: Image.asset("assets/images/authentication.jpg"),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Welcome to WhatsApp",
              style: TextStyle(color: Colors.white, fontSize: 27),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Read our Privacy policy. Tap "Agree and continue" to accept the Terms of service.',
              style: TextStyle(color: Color.fromARGB(255, 166, 187, 198)),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 40,
            width: 135,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 132, 141, 154),
                borderRadius: BorderRadius.circular(50)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  const Icon(Icons.language, color: Colors.white),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "English",
                    style: TextStyle(color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 280,
                            color: const Color.fromARGB(255, 132, 141, 154),
                            child: Center(
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      const Icon(Icons.horizontal_rule),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: Row(
                                          children: [
                                            const SizedBox(width: 10),
                                            Container(
                                              height: 40,
                                              width: 40,
                                              child: const Icon(Icons.close),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                            const SizedBox(width: 20),
                                            const Text(
                                              "App language",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: Row(
                                          children: [
                                            const SizedBox(width: 10),
                                            Container(
                                              height: 40,
                                              width: 40,
                                              child: const Icon(
                                                  Icons.radio_button_checked),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                            const SizedBox(width: 20),
                                            const Text(
                                              "English",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: Row(
                                          children: [
                                            const SizedBox(width: 10),
                                            Container(
                                              height: 40,
                                              width: 40,
                                              child: const Icon(
                                                  Icons.radio_button_unchecked),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                            const SizedBox(width: 20),
                                            const Text(
                                              "Hindi",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: Row(
                                          children: [
                                            const SizedBox(width: 10),
                                            Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Icon(
                                                  Icons.radio_button_unchecked),
                                            ),
                                            const SizedBox(width: 20),
                                            const Text(
                                              "Marathi",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: Row(
                                          children: [
                                            const SizedBox(width: 10),
                                            Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Icon(
                                                  Icons.radio_button_unchecked),
                                            ),
                                            const SizedBox(width: 20),
                                            const Text(
                                              "Gujrati",
                                              style: TextStyle(fontSize: 17),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 130,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const NumberAuthen(),
              ),
            ),
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 132, 141, 154),
                  borderRadius: BorderRadius.circular(50)),
              child: const Center(
                  child: Text(
                "Agree and continue",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
