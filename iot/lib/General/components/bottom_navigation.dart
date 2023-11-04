import 'package:flutter/material.dart';
import 'package:iot/ListDevicesScreen/list_devices_screen.dart';
import 'package:iot/ProfileScreen/profile_screen.dart';
import 'package:iot/constants.dart';

enum Pages {
  scenarios,
  devices,
  profile,
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key, required this.currentPage});
  final Pages currentPage;

  int _getCurrentPage(Pages page) {
    // должно соответствовать _getRedirectPage
    switch (page) {
      case Pages.scenarios:
        return 0;
      case Pages.devices:
        return 1;
      case Pages.profile:
        return 2;
      default:
        return 2;
    }
  }

  StatelessWidget _getRedirectPage(int page) {
    // в будущем 0 замениться на сценарии
    switch (page) {
      case 0:
        return const ListDevicesScreen();
      case 1:
        return const ListDevicesScreen();
      case 2:
        return const ProfileScreen();
      default:
        return const ProfileScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.white,
      currentIndex: _getCurrentPage(currentPage),
      backgroundColor: cMainBackgroundColor,
      onTap: (int index) => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => _getRedirectPage(index)),
      ),
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
