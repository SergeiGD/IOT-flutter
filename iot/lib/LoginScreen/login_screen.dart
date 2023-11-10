import 'package:flutter/material.dart';
import 'package:iot/General/gradient_container.dart';
import 'package:iot/LoginScreen/components/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: const GradientContainer(
        child: Material(
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: LoginScreenBody(),
          ),
        ),
      ),
    );
  }
}
