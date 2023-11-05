import 'package:flutter/material.dart';
import 'package:iot/ListDevicesScreen/list_devices_screen.dart';
import 'package:iot/ListScenariosScreen/list_scenarios_screen.dart';
import 'package:iot/LoginScreen/login_screen.dart';
import 'package:iot/constants.dart';

enum Pages {
  scenarios,
  devices,
  profile,
}

class BottonNavigation extends StatelessWidget {
  const BottonNavigation({super.key, required this.currentPage});
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
    // в будущем 0 и 2 заменяться на сценарии и профиль
    switch (page) {
      case 0:
        return const ListScenariosScreen();
      case 1:
        return const ListDevicesScreen();
      case 2:
        return const LoginScreen();
      default:
        return const LoginScreen();
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
