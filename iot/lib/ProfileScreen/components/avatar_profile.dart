import 'package:flutter/material.dart';
import 'package:iot/providers.dart';
import 'package:provider/provider.dart';

class AvatarProfile extends StatelessWidget {
  const AvatarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Consumer<ProfileModel>(
            builder: (context, profile, child) {
              return Row(
                children: [
                  CircleAvatar(
                    radius: 48,
                    backgroundImage: profile.avatar.image,
                  ),
                  const SizedBox(width: 15),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(profile.name,
                            style: const TextStyle(fontSize: 13)),
                        Text(profile.email,
                            style: const TextStyle(fontSize: 10))
                      ]),
                ],
              );
            },
          ),
          const Image(
            image: AssetImage('assets/images/arrow_right.png'),
            width: 14,
            height: 14,
          ),
        ],
      ),
    );
  }
}
