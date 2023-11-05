import 'package:flutter/material.dart';
import 'package:iot/constants.dart';

class LongAddButton extends StatelessWidget {
  const LongAddButton({super.key, required this.size, required this.event});
  final Size size;
  final VoidCallback event;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 50,
      child: Container(
        decoration: BoxDecoration(
          color: cBlueColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: IconButton(
          icon: const Icon(Icons.add),
          onPressed: event,
          color: Colors.white,
        ),
      ),
    );
  }
}
