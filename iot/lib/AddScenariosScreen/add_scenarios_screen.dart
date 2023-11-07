import 'package:flutter/material.dart';
import 'package:iot/General/gradient_container.dart';
import 'package:iot/constants.dart';
import 'package:iot/AddScenariosScreen/components/body.dart';
import 'package:iot/General/components/top_navigation.dart';
import 'package:iot/General/components/redirect_button.dart';

class AddScenariosScreen extends StatelessWidget {
  const AddScenariosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: const AddScenariosScreenBody(),
        appBar: TopNavigation(
          prevPageButton: true,
          navItems: [
            RedirectButton(
              text: "Новый сценарий",
              event: () => (),
            ),
          ],
        ),
      ),
    );
  }
}
