import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/authentication%20pages/varifynumber.dart';

class NumberAuthen extends StatefulWidget {
  const NumberAuthen({super.key});

  @override
  State<NumberAuthen> createState() => _NumberAuthenState();
}

class _NumberAuthenState extends State<NumberAuthen> {
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
            "Enter your phone number",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          )),
          const SizedBox(
            width: 10,
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
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Center(
                child: SizedBox(
                  width: 300,
                  child: Text(
                    "WhatsApp will need to varify your phone number. Carrier charges may apply. What's my number?",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Column(
              children: const [
                SizedBox(
                  width: 210,
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
                        label: Center(
                          child: Text("India"),
                        ),
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 75.0),
              child: Row(
                children: const [
                  SizedBox(
                    width: 50,
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
                          label: Text("+91"),
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          )),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 150,
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
                          label: Text("Phone number"),
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          )),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 350,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => VarifyNumber(),
                ),
              ),
              child: Container(
                width: 100,
                height: 50,
                child: Center(
                    child: Text(
                  "Next",
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
