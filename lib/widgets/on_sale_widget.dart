//23. Implement the sale widget

import 'package:flutter/material.dart';
import 'package:grocery_app_hadi_v1/services/utils.dart';

class OnSaleWidget extends StatefulWidget {
  const OnSaleWidget({Key? key}) : super(key: key);

  @override
  State<OnSaleWidget> createState() => _OnSaleWidgetState();
}

class _OnSaleWidgetState extends State<OnSaleWidget> {
  // Utils(context).getScreenSize;
  @override
  Widget build(BuildContext context) {
    Utils(context).getScreenSize;
    return Container();
  }
}
