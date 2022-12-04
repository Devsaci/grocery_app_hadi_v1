import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget({
    Key? key,
    required this.text,
    required this.color,
    required this.textSize,
    this.isTitle = false,
  }) : super(key: key);

  final String text;
  final Color color;
  final double textSize;
  bool isTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
