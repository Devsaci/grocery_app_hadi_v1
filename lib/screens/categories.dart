import 'package:flutter/material.dart';
import 'package:grocery_app_hadi_v1/widgets/categories_widget.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //21. Finish building the category screen
      body: GridView.count(
        crossAxisCount: 2,
      ),
    );
  }
}
