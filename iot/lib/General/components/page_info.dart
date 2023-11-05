import 'package:flutter/material.dart';

class PageInfo extends StatelessWidget {
  const PageInfo({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white.withOpacity(0.50),
          fontSize: 17,
          height: 1.5,
        ),
      ),
    );
  }
}
