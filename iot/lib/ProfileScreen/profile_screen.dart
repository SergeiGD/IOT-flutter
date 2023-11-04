import 'package:flutter/material.dart';
import 'package:iot/General/components/nav_top.dart';
import 'package:iot/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NavTop(title: "Профиль", height: 63, showLeading: false),
        Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const ItemProfile(),
          const SizedBox(height: 10),
          ButtonProfile(
            icon: Icons.computer,
            text: "Управление устройствами",
            onTap: () {},
          ),
          const SizedBox(height: 31),
          ButtonProfile(
            icon: Icons.comment,
            text: "FAQ и обратная связь",
            onTap: () {},
          ),
          ButtonProfile(
            icon: Icons.notifications,
            text: "Уведомления",
            onTap: () {},
          ),
          ButtonProfile(
            icon: Icons.note,
            text: "Пользовательское соглашение",
            onTap: () {},
          ),
          const SizedBox(height: 31),
          ButtonProfile(
            icon: Icons.settings,
            text: "Настройки",
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsScreen()));
            },
          )
        ])
      ],
    );
  }
}

class ItemProfile extends StatelessWidget {
  const ItemProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 48,
                backgroundImage:
                    AssetImage("assets/images/profile_picture.jpg"),
              ),
              SizedBox(width: 15),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("Mr.Cat", style: TextStyle(fontSize: 13)),
                Text("cat2023@gmail.com", style: TextStyle(fontSize: 10))
              ]),
            ],
          ),
          Image(
            image: AssetImage('assets/images/arrow_right.png'),
            width: 14,
            height: 14,
          )
        ],
      ),
    );
  }
}

class ButtonProfile extends StatelessWidget {
  const ButtonProfile(
      {super.key,
      this.icon,
      required this.text,
      this.onTap,
      this.widget = const Text("")});

  final IconData? icon;
  final String text;
  final Function()? onTap;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
          backgroundColor: const Color.fromRGBO(57, 35, 89, 1),
        ),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(icon),
                const SizedBox(width: 6),
                Text(text),
              ],
            ),
            Row(
              children: [
                widget,
                const Image(
                  image: AssetImage('assets/images/arrow_right.png'),
                  width: 14,
                  height: 14,
                ),
              ],
            )
          ],
        ));
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF392359), Color(0xFF306773)],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: const NavTop(title: "Учетная запись"),
          body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Padding(
              padding:
                  EdgeInsets.only(left: 13, right: 13, bottom: 15, top: 30),
              child: Text("Учетная запись"),
            ),
            ButtonProfile(text: "Фото", onTap: () => {}),
            ButtonProfile(
                text: "Никнейм",
                widget: const Padding(
                  padding: EdgeInsets.only(right: 9.0),
                  child: Text(
                    "Mr.Cat",
                    style: TextStyle(color: Colors.white70, fontSize: 11),
                  ),
                ),
                onTap: () => {}),
            ButtonProfile(
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
              padding:
                  EdgeInsets.only(left: 13, right: 13, bottom: 15, top: 30),
              child: Text("Безопасность"),
            ),
            ButtonProfile(text: "Изменить пароль для входа", onTap: () => {}),
            ButtonProfile(text: "Выйти из аккаунта", onTap: () => {})
          ]),
        ));
  }
}
