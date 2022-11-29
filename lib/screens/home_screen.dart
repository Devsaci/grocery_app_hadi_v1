import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SwitchListTile(
          secondary: const Icon(Icons.light_mode_outlined),
          title: const Text(
            "Theme",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          value: false,
          onChanged: (bool value) {},
        ),
      ),
    );
  }
}
