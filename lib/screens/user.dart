import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
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
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
