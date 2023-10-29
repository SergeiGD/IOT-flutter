import 'package:flutter/material.dart';

class RedirectButton extends StatelessWidget {
  const RedirectButton({
    super.key,
    this.active = false,
    required this.text,
    required this.event,
  });

  final String text;
  final GestureTapCallback event;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: event,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 17,
          shadows: const [
            Shadow(color: Colors.white, offset: Offset(0, -5)),
          ],
          color: Colors.transparent,
          decoration: active ? TextDecoration.underline : null,
          decorationColor: active ? Colors.white : null,
        ),
      ),
    );
  }
}
