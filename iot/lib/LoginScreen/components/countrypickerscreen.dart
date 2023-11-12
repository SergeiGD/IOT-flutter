import 'package:flutter/material.dart';
import 'package:iot/General/gradient_container.dart';
import 'package:iot/providers.dart';
import 'package:provider/provider.dart';

class CountryPickerScreen extends StatelessWidget {
  const CountryPickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(),
          body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Provider.of<SettingsModel>(context, listen: false)
                          .changeCountry("Казахстан");
                      Navigator.pop(context);
                    },
                    child: const Text("Казахстан")),
                const SizedBox(height: 3),
                ElevatedButton(
                    onPressed: () {
                      Provider.of<SettingsModel>(context, listen: false)
                          .changeCountry("Россия");
                      Navigator.pop(context);
                    },
                    child: const Text("Россия"))
              ])),
    );
  }
}
