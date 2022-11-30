import 'package:flutter/material.dart';
import 'package:grocery_app_hadi_v1/provider/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  //

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      body: Center(
        child: SwitchListTile(
          secondary: Icon(themeState.getDarkTheme
              ? Icons.dark_mode_outlined
              : Icons.light_mode_outlined),
          title: const Text(
            "Theme",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          value: false,
          onChanged: (bool value) {
            themeState.setDarkTheme = value;
          },
        ),
      ),
    );
  }
}
