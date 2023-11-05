import 'package:flutter/material.dart';
import 'package:iot/constants.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key, required this.event, required this.size});

  final VoidCallback event;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.all(50),
          width: size.width * 0.75,
          height: 50,
          child: Container(
            decoration: BoxDecoration(
              color: cBlueColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Сохранить",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
