import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 72, 66),
        title: const Text("Payment"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 7, 72, 66),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Icon(
                    Icons.currency_rupee_sharp,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Send payment"),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 7, 72, 66),
                      borderRadius: BorderRadius.circular(15)),
                  child: const Icon(
                    Icons.qr_code,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Scan payment QR code"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
