import 'package:flutter/material.dart';
import 'package:iot/constants.dart';
import 'package:iot/DevicesScreen/components/body.dart';
import 'package:iot/General/components/bottom_navigation.dart';
import 'package:iot/General/components/top_navigation.dart';
import 'package:iot/General/components/redirect_button.dart';

class DevicesScreen extends StatelessWidget {
  const DevicesScreen({super.key});

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
        child: const DevicesScreenBody(),
      ),
      bottomNavigationBar: const BottonNavigation(),
      appBar: TopNavigation(
        size: size,
        prevPageButton: true,
        navItems: [
          RedirectButton(
            text: "Добавить вручную",
            event: () => print("pressed1"),
          ),
          RedirectButton(
            text: "Сканирование",
            event: () => print("pressed2"),
          ),
        ],
      ),
    );
  }
}
