import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class DarkthemePrefs {
  static const THEME_STATUS = "THEME_STATUS";

  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(THEME_STATUS, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getBool(THEME_STATUS) ?? false;
  }
}