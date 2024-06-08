import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/chat_pages/home_setting.dart';
import 'package:flutter_application_1/pages/status_pages/status_privacy.dart';

class Status extends StatefulWidget {
  const Status({super.key});

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Updates"),
        backgroundColor: const Color.fromARGB(255, 7, 72, 66),
        elevation: 0,
        actions: [
          Container(
              margin: const EdgeInsets.all(10),
              child: const Icon(Icons.camera_alt)),
          Container(
              margin: const EdgeInsets.all(10),
              child: const Icon(Icons.search)),
          PopupMenuButton(
              onSelected: (value) {
                switch (value) {
                  case 1:
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeSetting(),
                    ));

                    break;
                  default:
                }
              },
              itemBuilder: ((context) => [
                    const PopupMenuItem(
                      value: 1,
                      child: Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ])),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  "Status",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              PopupMenuButton(
                onSelected: (value) {
                  switch (value) {
                    case 1:
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const StatusPrivacy(),
                          ));

                      break;
                    default:
                  }
                },
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text(
                      "Status privacy",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "My status",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Text("12:00",
                          style: TextStyle(
                              color: Color.fromARGB(255, 92, 94, 95))),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16, top: 16),
            child: Text(
              "Recent updates",
              style: TextStyle(color: Color.fromARGB(255, 92, 94, 95)),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text("Person name",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16)),
                          Text("12:00",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 92, 94, 95)))
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Positioned(
        bottom: 50,
        right: 10,
        child: SizedBox(
          height: 130,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                  onPressed: () {}, child: const Icon(Icons.add)),
              FloatingActionButton(onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
