import 'package:flutter/material.dart';

class NormalRow extends StatelessWidget {
  final String contactName;
  final IconData iconName;

  const NormalRow({
    super.key,
    required this.contactName,
    required this.iconName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, bottom: 15),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(iconName),
                  Text(
                    contactName,
                    style: const TextStyle(fontSize: 17),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
