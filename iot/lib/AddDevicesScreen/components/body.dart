import 'package:flutter/material.dart';
import 'package:iot/AddDevicesScreen/components/item_button.dart';

class AddDevicesScreenBody extends StatefulWidget {
  const AddDevicesScreenBody({super.key});

  @override
  State<AddDevicesScreenBody> createState() => _AddDevicesScreenBodyState();
}

class _AddDevicesScreenBodyState extends State<AddDevicesScreenBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ItemButton(
                  size: size,
                  image: Image.asset(
                    "images/fan.png",
                    fit: BoxFit.cover,
                  ),
                  title: "Вентилятор",
                ),
                ItemButton(
                  size: size,
                  image: Image.asset(
                    "images/fan.png",
                    fit: BoxFit.cover,
                  ),
                  title: "Вентилятор",
                ),
                ItemButton(
                  size: size,
                  image: Image.asset(
                    "images/fan.png",
                    fit: BoxFit.cover,
                  ),
                  title: "Вентилятор",
                ),
              ],
            ),
            SizedBox(height: size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ItemButton(
                  size: size,
                  image: Image.asset(
                    "images/fan.png",
                    fit: BoxFit.cover,
                  ),
                  title: "Вентилятор",
                ),
                ItemButton(
                  size: size,
                  image: Image.asset(
                    "images/fan.png",
                    fit: BoxFit.cover,
                  ),
                  title: "Вентилятор",
                ),
                ItemButton(
                  size: size,
                  image: Image.asset(
                    "images/fan.png",
                    fit: BoxFit.cover,
                  ),
                  title: "Вентилятор",
                ),
              ],
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
