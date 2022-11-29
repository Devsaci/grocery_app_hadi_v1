import 'package:shared_preferences/shared_preferences.dart';

class DarkthemePrefs {
  setDarkTheme() async {
    await SharedPreferences.getInstance();
  }
}
