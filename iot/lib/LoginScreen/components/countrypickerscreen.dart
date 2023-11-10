import 'package:flutter/material.dart';
import 'package:iot/General/gradient_container.dart';

class CountryPickerScreen extends StatelessWidget {
  const CountryPickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(),
          body: const Center(
            child: Text("bokan"),
          )),
    );
  }
}
