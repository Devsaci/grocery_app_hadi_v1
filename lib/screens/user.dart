import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app_hadi_v1/provider/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _listTiles(
              title: 'Address',
              subtitle: 'My Address',
              icon: IconlyLight.profile,
              onPressed: () {},
            ),
            _listTiles(
              title: 'Orders',
              icon: IconlyLight.bag,
              onPressed: () {},
            ),
            _listTiles(
              title: 'Wishlist',
              icon: IconlyLight.heart,
              onPressed: () {},
            ),
            _listTiles(
              title: 'Viewed',
              icon: IconlyLight.show,
              onPressed: () {},
            ),
            _listTiles(
              title: 'Forget password',
              icon: IconlyLight.unlock,
              onPressed: () {},
            ),
            SwitchListTile(
              secondary: Icon(themeState.getDarkTheme
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined),
              title: const Text(
                "Theme",
                style: TextStyle(
                  // color: Colors.black,
                  fontSize: 20,
                ),
              ),
              value: themeState.getDarkTheme,
              onChanged: (bool value) {
                setState(() {
                  themeState.setDarkTheme = value;
                });
              },
            ),
            _listTiles(
              title: 'Logout',
              icon: IconlyLight.logout,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _listTiles({
    required String title,
    String? subtitle,
    required IconData icon,
    required Function onPressed,
  }) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle ?? ""),
      leading: Icon(icon),
      trailing: const Icon(IconlyLight.arrowRight),
      onTap: () {
        onPressed() {}
      },
    );
  }
}

TextWidget(
    {required String text, required Color color, required int textSize}) {}
