import 'package:flutter/material.dart';
import 'package:iot/General/components/nav_top.dart';
import 'package:iot/General/components/primary_button.dart';
import 'package:iot/General/gradient_container.dart';
import 'package:iot/LoginScreen/login_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: const NavTop(title: "Учетная запись"),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.only(left: 13, right: 13, bottom: 15, top: 30),
          child: Text("Учетная запись"),
        ),
        PrimaryButton(text: "Фото", onTap: () => {}),
        PrimaryButton(
            text: "Никнейм",
            widget: const Padding(
              padding: EdgeInsets.only(right: 9.0),
              child: Text(
                "Mr.Cat",
                style: TextStyle(color: Colors.white70, fontSize: 11),
              ),
            ),
            onTap: () => {}),
        PrimaryButton(
            text: "E-mail",
            widget: const Padding(
              padding: EdgeInsets.only(right: 9.0),
              child: Text(
                "cat2023@gmail.com",
                style: TextStyle(color: Colors.white70, fontSize: 11),
              ),
            ),
            onTap: () => {}),
        const Padding(
          padding: EdgeInsets.only(left: 13, right: 13, bottom: 15, top: 30),
          child: Text("Безопасность"),
        ),
        PrimaryButton(text: "Изменить пароль для входа", onTap: () => {}),
        PrimaryButton(
            text: "Выйти из аккаунта",
            onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()))
                })
      ]),
    ));
  }
}
