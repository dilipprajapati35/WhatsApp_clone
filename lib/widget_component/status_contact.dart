// import 'package:flutter/material.dart';

// class StatusContact extends StatefulWidget {
//   final String contactName;
//   final String time;
//   const StatusContact(
//       {required this.contactName, required this.time, super.key});

//   @override
//   State<StatusContact> createState() => _StatusContactState();
// }

// class _StatusContactState extends State<StatusContact> {
//   String contactName;

 

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration:
//           const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: Container(
//               height: 50,
//               width: 50,
//               decoration: const BoxDecoration(
//                   color: Colors.green,
//                   borderRadius: BorderRadius.all(Radius.circular(25))),
//             ),
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//               Text(contactName,
//                   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
//               Text("12:00",
//                   style: TextStyle(color: Color.fromARGB(255, 92, 94, 95)))
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
