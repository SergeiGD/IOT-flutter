import 'package:flutter/material.dart';
import 'package:iot/General/gradient_container.dart';
import 'package:iot/ListDevicesScreen/list_devices_screen.dart';
import 'package:iot/ProfileScreen/profile_screen.dart';
import 'package:iot/ListScenariosScreen/list_scenarios_screen.dart';

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
    return GradientContainer(
      child: Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex.round(),
            backgroundColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor:
                Theme.of(context).colorScheme.onPrimary.withOpacity(0.75),
            selectedItemColor: Theme.of(context).colorScheme.onPrimary,
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
          body: PageView(
            controller: _controller,
            children: const [
              ListScenariosScreen(),
              ListDevicesScreen(),
              ProfileScreen()
            ],
          )),
    );
  }
}
