import 'package:flutter/material.dart';
import 'package:iot/constants.dart';
import 'package:iot/General/components/bottom_navigation.dart';

class NavTop extends StatelessWidget implements PreferredSizeWidget {
  const NavTop(
      {super.key,
      this.height = 46,
      required this.title,
      this.showLeading = true});

  final double height;
  final String title;
  final bool showLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      toolbarHeight: height,
      backgroundColor: cMainBackgroundColor,
      centerTitle: true,
      elevation: 1,
      automaticallyImplyLeading: showLeading,
      titleTextStyle: const TextStyle(fontSize: 18),
      shape: const Border(
          bottom:
              BorderSide(color: Color.fromRGBO(255, 255, 255, 0.5), width: 1)),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const NavTop(title: "Профиль", height: 63, showLeading: false),
        bottomNavigationBar: const BottonNavigation(currentPage: Pages.profile),
        body: Container(
          width: size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3, 0.5],
              colors: [
                cMainBackgroundColor,
                cSecondaryBackgroundColor,
              ],
            ),
          ),
          child:
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
          ]),
        ));
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
          backgroundColor: const Color.fromARGB(255, 73, 45, 114),
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
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: const NavTop(title: "Учетная запись"),
        body: Container(
          width: size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3, 0.5],
              colors: [
                cMainBackgroundColor,
                cSecondaryBackgroundColor,
              ],
            ),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
