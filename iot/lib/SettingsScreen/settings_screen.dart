import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:iot/General/components/nav_top.dart';
import 'package:iot/General/components/primary_button.dart';
import 'package:iot/General/gradient_container.dart';
import 'package:iot/LoginScreen/login_screen.dart';
import 'package:iot/providers.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
        Consumer<ProfileModel>(builder: (context, profile, child) {
          return Column(
            children: [
              PrimaryButton(
                  text: "Фото",
                  widget: Container(
                      width: 42,
                      height: 33,
                      padding: const EdgeInsets.only(right: 9.0),
                      child: CircleAvatar(
                        radius: 48,
                        backgroundImage: profile.avatar.image,
                      )),
                  onTap: () async {
                    XFile? pickedFile = await ImagePicker()
                        .pickImage(source: ImageSource.gallery);

                    if (pickedFile != null) {
                      Image newAvatar = Image.file(File(pickedFile.path));
                      profile.changeAvatar(newAvatar);
                    }
                  }),
              PrimaryButton(
                  text: "Никнейм",
                  widget: Padding(
                    padding: const EdgeInsets.only(right: 9.0),
                    child: Text(
                      profile.name,
                      style:
                          const TextStyle(color: Colors.white70, fontSize: 11),
                    ),
                  ),
                  onTap: () => {
                        openDialog("Ваше имя", "Введите имя", () {
                          profile.changeName(controller.text);
                          controller.text = "";
                        })
                      }),
              PrimaryButton(
                  text: "E-mail",
                  widget: Padding(
                    padding: const EdgeInsets.only(right: 9.0),
                    child: Text(
                      profile.email,
                      style:
                          const TextStyle(color: Colors.white70, fontSize: 11),
                    ),
                  ),
                  onTap: () => {
                        openDialog("Ваш email", "Введите email", () {
                          profile.changeEmail(controller.text);
                          controller.text = "";
                        })
                      })
            ],
          );
        }),
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

  Future openDialog(String title, String hint, VoidCallback onPressed) =>
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(title),
                content: TextField(
                  controller: controller,
                  decoration: InputDecoration(hintText: hint),
                ),
                actions: [
                  TextButton(
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.white),
                      onPressed: onPressed,
                      child: const Text('Сохранить'))
                ],
              ));
}
