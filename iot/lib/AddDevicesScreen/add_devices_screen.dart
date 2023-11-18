import 'package:flutter/material.dart';
import 'package:iot/AddDevicesScreen/components/body.dart';
import 'package:iot/General/components/top_navigation.dart';
import 'package:iot/General/components/redirect_button.dart';
import 'package:iot/General/gradient_container.dart';

class AddDevicesScreen extends StatelessWidget {
  const AddDevicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: const AddDevicesScreenBody(),
        appBar: TopNavigation(
          prevPageButton: true,
          navItems: [
            RedirectButton(
              text: "Добавить вручную",
              event: () => (),
            ),
            RedirectButton(
              text: "Сканирование",
              event: () => (),
            ),
          ],
          navIcon: NavIcon(
            icon: const Icon(Icons.qr_code),
            event: () => (),
          ),
        ),
      ),
    );
  }
}
