import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grocery_app_hadi_v1/screens/cart.dart';
import 'package:grocery_app_hadi_v1/screens/categories.dart';
import 'package:grocery_app_hadi_v1/screens/home_screen.dart';
import 'package:grocery_app_hadi_v1/screens/user.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  final List<Map<String, dynamic>> _pages = [
    {'page': const HomeScreen(), 'title': 'Home Screen'},
    {'page': const CategoriesScreen(), 'title': 'Categories Screen'},
    {'page': const CartScreen(), 'title': 'Cart Screen'},
    {'page': const UserScreen(), 'title': 'user Screen'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
