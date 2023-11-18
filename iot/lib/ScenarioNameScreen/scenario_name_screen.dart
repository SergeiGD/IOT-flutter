import 'package:flutter/material.dart';
import 'package:iot/General/gradient_container.dart';
import 'package:iot/ScenarioNameScreen/components/body.dart';
import 'package:iot/General/components/top_navigation.dart';
import 'package:iot/General/components/redirect_button.dart';

class ScenarioNameScreen extends StatelessWidget {
  const ScenarioNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: const ScenarioNameScreenBody(),
        appBar: TopNavigation(
          prevPageButton: true,
          navItems: [
            RedirectButton(
              text: "Название сценария",
              event: () => (),
            ),
          ],
        ),
      ),
    );
  }
}
