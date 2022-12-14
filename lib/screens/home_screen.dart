import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app_hadi_v1/provider/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _offerImages = [];

  //
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      body: Center(
        child: Swiper(
          itemCount: 4,
          itemBuilder: (BuildContext context, index) {
            return Image.asset(
              "assets/images/offres/Offer1.jpg",
              fit: BoxFit.fill,
            );
          },
        ),
      ),
    );
  }
}
