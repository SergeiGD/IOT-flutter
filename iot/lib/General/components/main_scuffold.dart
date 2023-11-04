import 'package:flutter/material.dart';
import 'package:iot/General/components/nav_top.dart';
import 'package:iot/ListDevicesScreen/list_devices_screen.dart';
import 'package:iot/ProfileScreen/profile_screen.dart';
import 'package:iot/constants.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  double _currentIndex = 2;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 2)
      ..addListener(() {
        setState(() {
          _currentIndex = _controller.page ?? 2;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        currentIndex: _currentIndex.round(),
        backgroundColor: cMainBackgroundColor,
        onTap: (tabIndex) {
          _controller.jumpToPage(tabIndex);
        },
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
      ),
      body: Container(
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3, 0.5],
            colors: [
              cMainBackgroundColor,
              cSecondaryBackgroundColor,
            ],
          ),
        ),
        child: PageView(
          controller: _controller,
          children: const [
            ListDevicesScreen(),
            ListDevicesScreen(),
            ProfileScreen()
          ],
        ),
      ),
    );
  }

  String _getTitleOfPage(double page) {
    switch (page) {
      case 0:
        return "Сценарии";
      case 1:
        return "Устройства";
      case 2:
        return "Профиль";
      default:
        return "ЧЕ";
    }
  }
}
