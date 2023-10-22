import 'package:flutter/material.dart';
import 'package:iot/constants.dart';
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu,
                  size: 30,
                  color: cDartGreyColor,
                ),
                const Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Container(
                  height: size.height * 0.045,
                  width: size.width * 0.095,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 8,
                            offset: Offset(3, 3)),
                      ]),
                  child: const Icon(
                    Icons.notifications_none,
                    color: cDartGreyColor,
                  ),
                ),
              ],
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
