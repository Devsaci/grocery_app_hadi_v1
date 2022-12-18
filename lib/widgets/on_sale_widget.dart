//23. Implement the sale widget

import 'package:flutter/material.dart';
import 'package:grocery_app_hadi_v1/services/utils.dart';

class OnSaleWidget extends StatefulWidget {
  const OnSaleWidget({Key? key}) : super(key: key);

  @override
  State<OnSaleWidget> createState() => _OnSaleWidgetState();
}

class _OnSaleWidgetState extends State<OnSaleWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Utils(context).getTheme;
    Size size = Utils(context).getScreenSize;
    return Material(
      color: Theme.of(context).cardColor.withOpacity(0.9),
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    'https://i.ibb.co/F0s3FHQ/Apricots.png',
                    width: size.width * 0.33,
                    height: size.width * 0.33,
                    // fit: BoxFit.cover,
                  ),
                  Column(
                    children: [],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
