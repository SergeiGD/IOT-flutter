import 'package:flutter/material.dart';
import 'package:iot/AddScenariosScreen/add_Scenarios_screen.dart';
import 'package:iot/ListScenariosScreen/components/body.dart';
import 'package:iot/General/components/top_navigation.dart';
import 'package:iot/General/components/redirect_button.dart';

class ListScenariosScreen extends StatelessWidget {
  const ListScenariosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopNavigation(
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
              MaterialPageRoute(
                  builder: (context) => const AddScenariosScreen()),
            ),
          ),
        ),
        const ListScenariosScreenBody()
      ],
    );
  }
}
