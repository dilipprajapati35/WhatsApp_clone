import 'package:flutter/material.dart';

import 'package:flutter_application_1/pages/chat_pages/in_account.dart';
import 'package:flutter_application_1/pages/chat_pages/inSettingPage.dart/applanguage.dart';
import 'package:flutter_application_1/pages/chat_pages/inSettingPage.dart/appupdate.dart';
import 'package:flutter_application_1/pages/chat_pages/inSettingPage.dart/avatar.dart';
import 'package:flutter_application_1/pages/chat_pages/inSettingPage.dart/in_chat.dart';
import 'package:flutter_application_1/pages/chat_pages/inSettingPage.dart/invite.dart';
import 'package:flutter_application_1/pages/chat_pages/inSettingPage.dart/notification.dart';
import 'package:flutter_application_1/pages/chat_pages/inSettingPage.dart/privacy.dart';
import 'package:flutter_application_1/pages/chat_pages/inSettingPage.dart/storage.dart';
import 'package:flutter_application_1/widget_component/setting_row.dart';

class HomeSetting extends StatefulWidget {
  const HomeSetting({super.key});

  @override
  State<HomeSetting> createState() => _HomeSettingState();
}

class _HomeSettingState extends State<HomeSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color.fromARGB(255, 7, 72, 66),
        title: const Text(
          "Settings",
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Dilip Prajapati",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Available",
                          style:
                              TextStyle(color: Color.fromARGB(255, 92, 94, 95)),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 70),
                      child: Icon(
                        Icons.qr_code,
                        color: Colors.green,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(25),
                                  right: Radius.circular(25))),
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 150,
                              color: Colors.white,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
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
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: Colors.black),
                                              ),
                                              const SizedBox(width: 20),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    "Dilip Prajapati",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                  Text("+91 9694031292")
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5.0),
                                          child: Row(
                                            children: [
                                              const SizedBox(width: 10),
                                              Container(
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: const Color.fromARGB(
                                                      255, 92, 94, 95),
                                                ),
                                                child: const Icon(Icons.add),
                                              ),
                                              const SizedBox(width: 20),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    "Add account",
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                ],
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
                      icon: const Icon(Icons.expand_circle_down_outlined),
                      color: Colors.green,
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                SettingRow(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const InAccount(),
                        )),
                    name: "Account",
                    iconName: Icons.key,
                    message: "Security notification, change number"),
                SettingRow(
                  name: "Privacy",
                  iconName: Icons.lock,
                  message: "Block contacts, disappring messages",
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Privacy(),
                  )),
                ),
                SettingRow(
                  name: "Avatar",
                  iconName: Icons.child_care,
                  message: "Create, edit, profile photo",
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Avatar(),
                  )),
                ),
                SettingRow(
                  name: "Chat",
                  iconName: Icons.chat,
                  message: "Theme, wallpapers, chat history",
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const InChat(),
                  )),
                ),
                SettingRow(
                  name: "Notifications",
                  iconName: Icons.notifications_outlined,
                  message: "Messages, group & call tones",
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const InNotification(),
                  )),
                ),
                SettingRow(
                  name: "Storage and data",
                  iconName: Icons.storage_outlined,
                  message: "Networks usage, auto-download",
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Storage(),
                  )),
                ),
                SettingRow(
                  name: "App language",
                  iconName: Icons.language,
                  message: "English(devies language)",
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AppLanguage(),
                  )),
                ),
                SettingRow(
                  name: "Invite a friend",
                  iconName: Icons.people_alt,
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Invite(),
                  )),
                ),
                SettingRow(
                  name: "App updates",
                  iconName: Icons.mobile_friendly_rounded,
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AppUpdate(),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: const [
                          Text(
                            "from",
                            style: TextStyle(
                                color: Color.fromARGB(255, 92, 94, 95)),
                          ),
                          Text("Dilip Prajapati")
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
