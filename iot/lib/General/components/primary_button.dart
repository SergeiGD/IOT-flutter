import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  static void defaultOnTap() {}

  const PrimaryButton(
      {super.key,
      this.icon,
      required this.text,
      this.onTap = defaultOnTap,
      this.widget = const Text("")});

  final IconData? icon;
  final String text;
  final Function()? onTap;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(icon),
                const SizedBox(width: 6),
                Text(text),
              ],
            ),
            Row(
              children: [
                widget,
                const Image(
                  image: AssetImage('assets/images/arrow_right.png'),
                  width: 14,
                  height: 14,
                ),
              ],
            )
          ],
        ));
  }
}
