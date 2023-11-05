import 'package:flutter/material.dart';
import 'package:iot/constants.dart';

class ExampleButton extends StatelessWidget {
  const ExampleButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cSecondaryBackgroundColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: () => (),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
