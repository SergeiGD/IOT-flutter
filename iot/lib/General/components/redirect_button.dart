import 'package:flutter/material.dart';

class RedirectButton extends StatelessWidget {
  const RedirectButton({
    super.key,
    required this.text,
    required this.event,
  });

  final String text;
  final GestureTapCallback event;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: event,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 17,
        ),
      ),
    );
  }
}
