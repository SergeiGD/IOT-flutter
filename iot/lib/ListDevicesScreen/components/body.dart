import 'package:flutter/material.dart';
import 'package:iot/constants.dart';

class ListDevicesScreenBody extends StatefulWidget {
  const ListDevicesScreenBody({super.key});

  @override
  State<ListDevicesScreenBody> createState() => _ListDevicesScreenBodyState();
}

class _ListDevicesScreenBodyState extends State<ListDevicesScreenBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            const Center(
              child: Text(
                "Отсутствуют\n подключенные\n устроства",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: cSecondaryTextColor,
                  fontSize: 20,
                  letterSpacing: 2,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
