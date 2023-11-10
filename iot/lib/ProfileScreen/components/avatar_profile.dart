import 'package:flutter/material.dart';

class AvatarProfile extends StatelessWidget {
  const AvatarProfile({super.key});

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
