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
    return const Scaffold(
      body: Center(
        child: ListTile(
          title: Text(
            'Address',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          subtitle: Text('subtitle'),
          leading: Icon(IconlyLight.profile),
        ),
      ),
    );
  }
}
