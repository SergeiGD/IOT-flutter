import 'package:flutter/material.dart';
import 'package:iot/General/components/save_button.dart';
import 'package:iot/ScenarioNameScreen/components/example_button.dart';

class ScenarioNameScreenBody extends StatefulWidget {
  const ScenarioNameScreenBody({super.key});

  @override
  State<ScenarioNameScreenBody> createState() => _ScenarioNameScreenBodyState();
}

class _ScenarioNameScreenBodyState extends State<ScenarioNameScreenBody> {
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
              "Название сценария",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                    maxLines: 1,
                    minLines: 1,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white.withOpacity(0.25),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white.withOpacity(0.25),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Введите название',
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.white.withOpacity(0.25),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.01,
                ),
                IconButton(
                  onPressed: () => (),
                  icon: const Icon(Icons.image),
                  color: Colors.white,
                  iconSize: 75,
                )
              ],
            ),
            const Wrap(
              spacing: 10,
              runSpacing: 15,
              children: [
                ExampleButton(text: "пример"),
                ExampleButton(text: "пример"),
                ExampleButton(text: "пример"),
                ExampleButton(text: "пример"),
                ExampleButton(text: "пример"),
              ],
            ),
            SaveButton(event: () => (), size: size)
          ],
        ),
      ),
    );
  }
}
