import 'package:flutter/material.dart';
import 'package:iot/General/components/bottom_navigation.dart';
import 'package:iot/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3, 0.5],
            colors: [
              cMainBackgroundColor,
              cSecondaryBackgroundColor,
            ],
          ),
        ),
        child: Container(),
      ),
      bottomNavigationBar: const BottonNavigation(
        currentPage: Pages.profile,
      ),
    );
  }
}
