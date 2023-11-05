import 'package:flutter/material.dart';
import 'package:iot/AddScenariosScreen/add_Scenarios_screen.dart';
import 'package:iot/constants.dart';
import 'package:iot/ListScenariosScreen/components/body.dart';
import 'package:iot/General/components/bottom_navigation.dart';
import 'package:iot/General/components/top_navigation.dart';
import 'package:iot/General/components/redirect_button.dart';

class ListScenariosScreen extends StatelessWidget {
  const ListScenariosScreen({super.key});

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
        child: const ListScenariosScreenBody(),
      ),
      bottomNavigationBar: const BottonNavigation(
        currentPage: Pages.scenarios,
      ),
      appBar: TopNavigation(
        prevPageButton: false,
        navItems: [
          RedirectButton(
            text: "Сценарии",
            event: () => (),
          ),
        ],
        navIcon: NavIcon(
          icon: const Icon(Icons.add),
          event: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddScenariosScreen()),
          ),
        ),
      ),
    );
  }
}
