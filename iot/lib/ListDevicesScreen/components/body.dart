import 'package:flutter/material.dart';

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
            Center(
              child: Text(
                "Отсутствуют\n подключенные\n устройства",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.onSecondary,
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
