import 'package:flutter/material.dart';

class NewContact extends StatefulWidget {
  const NewContact({super.key});

  @override
  State<NewContact> createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 72, 66),
        title: const Text("New contact"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    child: const Icon(Icons.person_2_outlined,
                        color: Color.fromARGB(255, 92, 94, 95)),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 92, 94, 95)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 92, 94, 95)),
                          ),
                          labelText: "First name",
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 92, 94, 95))),
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  SizedBox(width: 50),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 92, 94, 95)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 92, 94, 95)),
                          ),
                          labelText: "Last name",
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 92, 94, 95))),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    child: const Icon(Icons.call,
                        color: Color.fromARGB(255, 92, 94, 95)),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 92, 94, 95)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 92, 94, 95)),
                          ),
                          labelText: "Phone",
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 92, 94, 95))),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    child: const Icon(Icons.email_outlined,
                        color: Color.fromARGB(255, 92, 94, 95)),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 92, 94, 95)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 92, 94, 95)),
                          ),
                          labelText: "Email address",
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 92, 94, 95))),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: Row(
                  children: const [
                    Text(
                      "Add Information",
                      style: TextStyle(color: Color.fromARGB(255, 7, 72, 66)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 200),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 7, 72, 66)),
                      child: const Center(
                        child: Text(
                          "Save",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
