import 'package:flutter/material.dart';
import 'package:iot/constants.dart';

class ButtonScenario extends StatelessWidget {
  const ButtonScenario({
    super.key,
    required this.text,
    required this.event,
    required this.icon,
  });

  final IconData icon;
  final String text;
  final VoidCallback event;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          backgroundColor: cMainBackgroundColor,
        ),
        onPressed: event,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(icon),
                const SizedBox(width: 6),
                Text(
                  text,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ));
  }
}
