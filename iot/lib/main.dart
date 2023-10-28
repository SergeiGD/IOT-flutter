import 'package:flutter/material.dart';
import 'package:iot/ListDevicesScreen/list_devices_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Smart Home",
      theme: ThemeData(
        fontFamily: "Michroma",
      ),
      home: const ListDevicesScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
