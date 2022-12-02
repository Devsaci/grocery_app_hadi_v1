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
            _listTile(
              title: 'Address 2',
              subtitle: 'My subtitle',
              icon: IconlyLight.profile,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _listTile({
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
      subtitle: Text(subtitle!),
      leading: const Icon(IconlyLight.profile),
      trailing: const Icon(IconlyLight.arrowRight),
      onTap: () {
        onPressed() {}
      },
    );
  }
}
