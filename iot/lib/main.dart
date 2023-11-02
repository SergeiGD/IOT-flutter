import 'package:flutter/material.dart';
// import 'package:iot/ListDevicesScreen/list_devices_screen.dart';
import 'package:iot/LoginScreen/login_screen.dart';

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
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(102, 119, 217, 0.85),
          )),
          inputDecorationTheme: const InputDecorationTheme(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white70)),
          ),
          textSelectionTheme:
              const TextSelectionThemeData(cursorColor: Colors.white70),
          textTheme: const TextTheme(
              bodyMedium: TextStyle(color: Colors.white),
              titleMedium: TextStyle(color: Colors.white70))),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
