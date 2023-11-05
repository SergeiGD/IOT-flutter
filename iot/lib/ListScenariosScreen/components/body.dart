import 'package:flutter/material.dart';
import 'package:iot/AddScenariosScreen/add_Scenarios_screen.dart';
import 'package:iot/General/components/long_add_button.dart';
import 'package:iot/General/components/page_info.dart';

class ListScenariosScreenBody extends StatefulWidget {
  const ListScenariosScreenBody({super.key});

  @override
  State<ListScenariosScreenBody> createState() =>
      _ListScenariosScreenBodyState();
}

class _ListScenariosScreenBodyState extends State<ListScenariosScreenBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const PageInfo(
                text:
                    "Настройте сценарий, чтобы одной командой запускать сразу несколько устройств"),
            const SizedBox(
              height: 30,
            ),
            LongAddButton(
              size: size,
              event: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AddScenariosScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
