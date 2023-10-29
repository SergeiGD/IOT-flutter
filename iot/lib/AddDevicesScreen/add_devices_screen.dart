import 'package:flutter/material.dart';
import 'package:iot/constants.dart';
import 'package:iot/AddDevicesScreen/components/body.dart';
import 'package:iot/General/components/bottom_navigation.dart';
import 'package:iot/General/components/top_navigation.dart';
import 'package:iot/General/components/redirect_button.dart';

class AddDevicesScreen extends StatelessWidget {
  const AddDevicesScreen({super.key});

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
        child: const AddDevicesScreenBody(),
      ),
      bottomNavigationBar: const BottonNavigation(
        currentPage: Pages.devices,
      ),
      appBar: TopNavigation(
        prevPageButton: true,
        navItems: [
          RedirectButton(
            text: "Добавить вручную",
            event: () => (),
            active: true,
          ),
          RedirectButton(
            text: "Сканирование",
            event: () => (),
          ),
        ],
        navIcon: NavIcon(
          icon: const Icon(Icons.qr_code),
          event: () => (),
        ),
      ),
    );
  }
}
