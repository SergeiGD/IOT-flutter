import 'package:flutter/material.dart';

class ItemButton extends StatelessWidget {
  const ItemButton(
      {super.key,
      required this.size,
      required this.image,
      required this.title});

  final Size size;
  final Image image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => (),
          child: SizedBox(
            height: size.height * 0.12,
            width: size.width * 0.21,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: image,
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
