import 'package:flutter/material.dart';
import 'package:iot/General/components/nav_top.dart';
import 'package:iot/General/components/primary_button.dart';
import 'package:iot/ProfileScreen/components/avatar_profile.dart';
import 'package:iot/SettingsScreen/settings_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NavTop(title: "Профиль", height: 63, showLeading: false),
        Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const AvatarProfile(),
          const SizedBox(height: 10),
          PrimaryButton(
            icon: Icons.computer,
            text: "Управление устройствами",
            onTap: () {},
          ),
          const SizedBox(height: 31),
          PrimaryButton(
            icon: Icons.comment,
            text: "FAQ и обратная связь",
            onTap: () {},
          ),
          PrimaryButton(
            icon: Icons.notifications,
            text: "Уведомления",
            onTap: () {},
          ),
          PrimaryButton(
            icon: Icons.note,
            text: "Пользовательское соглашение",
            onTap: () {},
          ),
          const SizedBox(height: 31),
          PrimaryButton(
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
