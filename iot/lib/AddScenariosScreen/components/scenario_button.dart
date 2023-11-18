import 'package:flutter/material.dart';
import 'package:iot/constants.dart';

class ButtonScenario extends StatelessWidget {
  const ButtonScenario({
    super.key,
    required this.text,
    required this.event,
    required this.icon,
    required this.size,
  });

  final IconData icon;
  final String text;
  final VoidCallback event;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        backgroundColor: cMainBackgroundColor,
      ),
      onPressed: event,
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
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
          )),
    );
  }
}
