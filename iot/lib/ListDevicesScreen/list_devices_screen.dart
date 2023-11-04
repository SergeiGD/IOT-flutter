import 'package:flutter/material.dart';
import 'package:iot/AddDevicesScreen/add_devices_screen.dart';
import 'package:iot/constants.dart';
import 'package:iot/ListDevicesScreen/components/body.dart';
import 'package:iot/General/components/bottom_navigation.dart';
import 'package:iot/General/components/top_navigation.dart';
import 'package:iot/General/components/redirect_button.dart';

class ListDevicesScreen extends StatelessWidget {
  const ListDevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
        child: const ListDevicesScreenBody(),
      ),
      bottomNavigationBar: const BottomNavigation(
        currentPage: Pages.devices,
      ),
      appBar: TopNavigation(
        prevPageButton: false,
        navItems: [
          RedirectButton(
            text: "Устройства",
            event: () => (),
          ),
        ],
        navIcon: NavIcon(
          icon: const Icon(Icons.add),
          event: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddDevicesScreen()),
          ),
        ),
      ),
    );
  }
}
