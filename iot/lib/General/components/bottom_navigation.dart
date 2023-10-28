import 'package:flutter/material.dart';
import 'package:iot/constants.dart';

class BottonNavigation extends StatelessWidget {
  const BottonNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: cWhiteColor,
      backgroundColor: cMainBackgroundColor,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard_customize_outlined),
          label: 'Сценарии',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.touch_app),
          label: 'Устройства',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Профиль',
        ),
      ],
    );
  }
}
