// 27. Implement the feeds widget and add it to the Home screen

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/material.dart';

class FeedsWidget extends StatefulWidget {
  const FeedsWidget({super.key});

  @override
  State<FeedsWidget> createState() => _FeedsWidgetState();
}

class _FeedsWidgetState extends State<FeedsWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
      ),
    );
  }
}
