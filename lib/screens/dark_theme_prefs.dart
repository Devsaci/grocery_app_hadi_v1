import 'package:shared_preferences/shared_preferences.dart';

class DarkthemePrefs {
  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('key', value);
  }
}
