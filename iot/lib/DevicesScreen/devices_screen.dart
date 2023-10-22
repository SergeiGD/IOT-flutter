import 'package:flutter/material.dart';
import 'package:iot/constants.dart';
import 'package:iot/DevicesScreen/components/body.dart';

class DevicesScreen extends StatelessWidget {
  const DevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: cBgColor, body: DevicesScreenBody());
  }
}
