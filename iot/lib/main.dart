import 'package:flutter/material.dart';
// import 'package:iot/ListDevicesScreen/list_devices_screen.dart';
import 'package:iot/LoginScreen/login_screen.dart';
import 'package:iot/constants.dart';
import 'package:iot/providers.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    ColorScheme defaultColorScheme() {
      return const ColorScheme(
          brightness: Brightness.dark,
          primary: cPrimary, // фон кнопок
          onPrimary: cAccentColor, // текст кнопок
          secondary: cSecondary, //
          onSecondary: cSecondAccentColor,
          error: Colors.red,
          onError: Colors.red,
          background: cGradientColor, // временно используется для градиента
          onBackground: cPrimary,
          surface: cPrimary,
          onSurface: cAccentColor // кнопка назад на навигации
          );
    }

    ThemeData defaultTheme = ThemeData(
        // может быть перейдем потом на material 3
        // useMaterial3: true,
        fontFamily: "Michroma",
        colorScheme: defaultColorScheme(),
        // colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF392359), brightness: Brightness.dark),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
          //backgroundColor: const Color.fromRGBO(57, 35, 89, 1),
        )),
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white70)),
        ),
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: Colors.white70));

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SettingsModel()),
        ChangeNotifierProvider(create: (context) => ProfileModel())
      ],
      child: MaterialApp(
        title: "Smart Home",
        theme: defaultTheme,
        home: const LoginScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
