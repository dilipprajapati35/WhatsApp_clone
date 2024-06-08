import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/chat_pages/home_page.dart';

class VarifyNumber extends StatefulWidget {
  const VarifyNumber({super.key});

  @override
  State<VarifyNumber> createState() => _VarifyNumberState();
}

class _VarifyNumberState extends State<VarifyNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 72, 66),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 7, 72, 66),
        actions: [
          const Center(
              child: Text(
            "Varifying your number",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          )),
          const SizedBox(
            width: 20,
          ),
          PopupMenuButton(
            itemBuilder: (context) => const [
              PopupMenuItem(value: 1, child: Text("Link as companion device")),
              PopupMenuItem(value: 1, child: Text("Help"))
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Center(
                    child: SizedBox(
                      width: 300,
                      child: Text(
                        "Can't send an SMS with yourcode because you've tried to register +91 9999999999 recently. Request a call or wait before requesting an SMS. Wrong number?",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140.0),
              child: Row(
                children: const [
                  SizedBox(
                    width: 10,
                    child: TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        hintText: "-",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 5),
                  SizedBox(
                    width: 10,
                    child: TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        hintText: "-",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 5),
                  SizedBox(
                    width: 10,
                    child: TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        hintText: "-",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 5),
                  SizedBox(
                    width: 10,
                    child: TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        hintText: "-",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 5),
                  SizedBox(
                    width: 10,
                    child: TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        hintText: "-",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 5),
                  SizedBox(
                    width: 10,
                    child: TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        hintText: "-",
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 125.0, top: 40),
              child: Row(
                children: [
                  Text(
                    "Don't receive code?",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 350,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              ),
              child: Container(
                width: 100,
                height: 50,
                child: Center(
                    child: Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                )),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 132, 141, 154),
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
