import 'package:flutter/material.dart';
import 'package:iot/constants.dart';
import 'package:iot/AddScenariosScreen/components/body.dart';
import 'package:iot/General/components/top_navigation.dart';
import 'package:iot/General/components/redirect_button.dart';

class AddScenariosScreen extends StatelessWidget {
  const AddScenariosScreen({super.key});

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
        child: const AddScenariosScreenBody(),
      ),
      appBar: TopNavigation(
        prevPageButton: true,
        navItems: [
          RedirectButton(
            text: "Новый сценарий",
            event: () => (),
          ),
        ],
      ),
    );
  }
}
