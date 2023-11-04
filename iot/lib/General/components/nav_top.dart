import 'package:flutter/material.dart';
import 'package:iot/constants.dart';

class NavTop extends StatelessWidget implements PreferredSizeWidget {
  const NavTop(
      {super.key,
      this.height = 46,
      required this.title,
      this.showLeading = true});

  final double height;
  final String title;
  final bool showLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      toolbarHeight: height,
      backgroundColor: cMainBackgroundColor,
      centerTitle: true,
      elevation: 1,
      automaticallyImplyLeading: showLeading,
      titleTextStyle: const TextStyle(fontSize: 18),
      shape: const Border(
          bottom:
              BorderSide(color: Color.fromRGBO(255, 255, 255, 0.5), width: 1)),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
