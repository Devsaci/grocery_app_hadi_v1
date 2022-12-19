//23. Implement the sale widget

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app_hadi_v1/services/utils.dart';
import 'package:grocery_app_hadi_v1/widgets/price_widget.dart';
import 'package:grocery_app_hadi_v1/widgets/text_widget.dart';

class OnSaleWidget extends StatefulWidget {
  const OnSaleWidget({Key? key}) : super(key: key);

  @override
  State<OnSaleWidget> createState() => _OnSaleWidgetState();
}

class _OnSaleWidgetState extends State<OnSaleWidget> {
  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    'https://i.ibb.co/F0s3FHQ/Apricots.png',
                    //width: size.width * 0.33,
                    height: size.width * 0.22,
                    // fit: BoxFit.cover,
                  ),
                  Column(
                    children: [
                      TextWidget(
                        text: '1KG',
                        color: color,
                        textSize: 22,
                        isTitle: true,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              IconlyLight.bag2,
                              size: 22,
                              color: color,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('print heart button is pressed');
                            },
                            child: Icon(
                              IconlyLight.heart,
                              size: 22,
                              color: color,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                ],
              ),
              const PriceWidget(),
              const SizedBox(height: 5),
              TextWidget(
                text: 'Product title',
                color: color,
                textSize: 16,
                isTitle: true,
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
