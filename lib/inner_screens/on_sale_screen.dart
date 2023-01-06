//30. Implement the sale screen

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app_hadi_v1/services/utils.dart';
import 'package:grocery_app_hadi_v1/widgets/feed_items.dart';

class OnSaleScreen extends StatefulWidget {
  const OnSaleScreen({super.key});

  @override
  State<OnSaleScreen> createState() => _OnSaleScreenState();
}

class _OnSaleScreenState extends State<OnSaleScreen> {
  @override
  Widget build(BuildContext context) {
    final Utils utils = Utils(context);
    Size size = utils.getScreenSize;
    return Scaffold(
      body: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        padding: EdgeInsets.zero,
        childAspectRatio: size.width / (size.height * 0.59),
        children: List.generate(4, (index) => const FeedsWidget()),
      ),
    );
  }
}
