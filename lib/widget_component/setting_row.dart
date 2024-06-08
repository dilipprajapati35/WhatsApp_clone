import 'package:flutter/material.dart';

class SettingRow extends StatelessWidget {
  final String name;
  final String? message;
  final IconData iconName;
  final VoidCallback onTap;

  const SettingRow({
    required this.name,
    required this.iconName,
    this.message,
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, bottom: 15),
        child: Row(
          children: [
            Icon(iconName, color: const Color.fromARGB(255, 92, 94, 95)),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 17),
                  ),
                  Text(
                    message ?? "",
                    style:
                        const TextStyle(color: Color.fromARGB(255, 92, 94, 95)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
