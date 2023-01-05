import 'package:flutter/material.dart';
import 'package:grocery_app_hadi_v1/services/utils.dart';
import 'package:grocery_app_hadi_v1/widgets/text_widget.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
    required this.salePrice,
    required this.price,
    required this.textPrice,
    required this.isOnSale,
  });

  final double salePrice, price;
  final String textPrice;
  final bool isOnSale;

  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    double usePrice = isOnSale ? salePrice : price;
    return FittedBox(
        child: Row(
      children: [
        TextWidget(
          text: '\euro${(usePrice * int.parse(textPrice)).toStringAsFixed(2)}',
          color: Colors.green,
          textSize: 13,
        ),
        const SizedBox(width: 5),
        Text(
          '2.59\euro',
          style: TextStyle(
            fontSize: 13,
            color: color,
            decoration: TextDecoration.lineThrough,
          ),
        )
      ],
    ));
  }
}
