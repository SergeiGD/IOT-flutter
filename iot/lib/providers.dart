import 'package:flutter/material.dart';

class SettingsModel extends ChangeNotifier {
  String _country = "Россия";

  String get country => _country;

  void changeCountry(String newCountry) {
    _country = newCountry;
    notifyListeners();
  }
}

class ProfileModel extends ChangeNotifier {
  String _name = "Mr.Cat";
  String _email = "cat2023@gmail.com";
  Image _avatar = Image.asset("assets/images/profile_picture.jpg");

  String get name => _name;
  String get email => _email;
  Image get avatar => _avatar;

  void changeName(String newName) {
    _name = newName;
    notifyListeners();
  }

  void changeAvatar(Image newImage) {
    _avatar = newImage;
    notifyListeners();
  }

  void changeEmail(String newEmail) {
    _email = newEmail;
    notifyListeners();
  }
}
