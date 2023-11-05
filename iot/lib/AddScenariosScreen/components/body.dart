import 'package:flutter/material.dart';
import 'package:iot/AddScenariosScreen/components/scenario_button.dart';
import 'package:iot/General/components/save_button.dart';
import 'package:iot/ScenarioNameScreen/scenario_name_screen.dart';

class AddScenariosScreenBody extends StatefulWidget {
  const AddScenariosScreenBody({super.key});

  @override
  State<AddScenariosScreenBody> createState() => _AddScenariosScreenBodyState();
}

class _AddScenariosScreenBodyState extends State<AddScenariosScreenBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Заполните сценарии",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            ButtonScenario(
              event: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ScenarioNameScreen()),
              ),
              icon: Icons.comment,
              text: "Укажите имя сценария",
            ),
            const SizedBox(height: 10),
            ButtonScenario(
              event: () => (),
              icon: Icons.play_circle_outline,
              text: "Добавить условие",
            ),
            const SizedBox(height: 10),
            ButtonScenario(
              event: () => (),
              icon: Icons.playlist_add_sharp,
              text: "Добавить действие",
            ),
            SaveButton(event: () => (), size: size)
          ],
        ),
      ),
    );
  }
}
