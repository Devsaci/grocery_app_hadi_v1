import 'package:flutter/material.dart';
import 'package:grocery_app_hadi_v1/provider/dark_theme_provider.dart';
import 'package:grocery_app_hadi_v1/services/utils.dart';
import 'package:grocery_app_hadi_v1/widgets/categories_widget.dart';
import 'package:grocery_app_hadi_v1/widgets/text_widget.dart';
import 'package:provider/provider.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    // final themeState = Provider.of<DarkThemeProvider>(context);
    // final Color color = themeState.getDarkTheme ? Colors.black : Colors.white;

    final utils = Utils(context);
    Color color = utils.color;
    return Scaffold(
      //21. Finish building the category screen
      appBar: AppBar(
        elevation: 0,
        title: TextWidget(
          text: "Categories",
          color: color,
          textSize: 24,
        ),
      ),
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
