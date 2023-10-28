import 'package:flutter/material.dart';
import 'package:iot/DevicesScreen/components/item_button.dart';

class DevicesScreenBody extends StatefulWidget {
  const DevicesScreenBody({super.key});

  @override
  State<DevicesScreenBody> createState() => _DevicesScreenBodyState();
}

class _DevicesScreenBodyState extends State<DevicesScreenBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            SizedBox(height: size.height * 0.03),
            ItemButton(
              size: size,
              icon: Icons.monitor,
              title: "TV",
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
