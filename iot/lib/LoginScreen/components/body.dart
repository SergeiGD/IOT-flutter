import 'package:flutter/material.dart';
import 'package:iot/MainScreen/main_screen.dart';
import 'package:iot/LoginScreen/components/countrypickerscreen.dart';
import 'package:iot/main.dart';
import 'package:provider/provider.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height - 100),
            child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 70),
                  Image(
                      image: AssetImage('assets/images/logo.png'),
                      width: 80,
                      height: 80),
                  Center(
                    child: Text("Smart\nHome",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        )),
                  ),
                  SizedBox(height: 30),
                  CountryPicker(),
                  TabBar(
                      indicatorColor: Colors.white70,
                      tabs: [Tab(text: "По логину"), Tab(text: "По телефону")]),
                  Expanded(
                    child: TabBarView(children: [LoginForm(), PhoneForm()]),
                  ),
                  Text(
                    'Нажимая “Далее”, Вы соглашаетесь с \nусловиями пользовательского соглашения',
                    textAlign: TextAlign.center,
                  )
                ]),
          ),
        ),
      ),
    );
  }
}

class CountryPicker extends StatelessWidget {
  const CountryPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(
                  width: 2, color: Color.fromRGBO(255, 255, 255, 0.5)))),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.onPrimary),
        onPressed: () {
          Navigator.of(context).push(_createRoute());
        },
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 26, child: Text("Страна")),
              Row(
                children: [
                  Consumer<SettingsModel>(builder: (context, settings, child) {
                    return SizedBox(
                      height: 26,
                      child: Text(settings.country),
                    );
                  }),
                  const SizedBox(width: 4),
                  const Image(
                    image: AssetImage('assets/images/arrow_right.png'),
                    width: 14,
                    height: 14,
                  )
                ],
              )
            ]),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const CountryPickerScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(-1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.ease;
          final tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        });
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 5),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const LoginFieldForm(text: "Логин"),
            const SizedBox(height: 8),
            const LoginFieldForm(text: "Пароль"),
            const SizedBox(height: 8),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    backgroundColor: Theme.of(context).colorScheme.secondary),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainScreen()));
                },
                child: const Text(
                  "Далее",
                ))
          ],
        ),
      ),
    );
  }
}

class LoginFieldForm extends StatelessWidget {
  const LoginFieldForm(
      {super.key, required this.text, this.keyboardType = TextInputType.text});

  final String text;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            fillColor:
                Theme.of(context).colorScheme.onPrimary.withOpacity(0.15),
            filled: true,
            labelText: text,
            labelStyle: TextStyle(
                color: Theme.of(context)
                    .colorScheme
                    .onPrimary
                    .withOpacity(0.70))));
  }
}

class PhoneForm extends StatefulWidget {
  const PhoneForm({super.key});

  @override
  State<PhoneForm> createState() => _PhoneFormState();
}

class _PhoneFormState extends State<PhoneForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 5),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const LoginFieldForm(
                text: "Номер телефона", keyboardType: TextInputType.phone),
            const SizedBox(height: 8),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    backgroundColor: Theme.of(context).colorScheme.secondary),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainScreen()));
                },
                child: const Text(
                  "Далее",
                ))
          ],
        ),
      ),
    );
  }
}
