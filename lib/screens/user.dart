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
          children: const [
            ListTile(
              title: Text(
                'Address',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('subtitle'),
              leading: Icon(IconlyLight.profile),
              trailing: Icon(IconlyLight.arrowRight),
            ),
          ],
        ),
      ),
    );
  }
}
