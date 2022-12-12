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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 240 / 250,
          crossAxisSpacing: 10, // Vertical
          mainAxisSpacing: 10, // Horizontal
          children: List.generate(6, (index) => CategoriesWidget()),
        ),
      ),
    );
  }
}
