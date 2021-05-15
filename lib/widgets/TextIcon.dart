import 'package:flutter/material.dart';

class TextIcon extends StatelessWidget {
  final Text text;
  final Icon icon;
  final bool labelStart;
  final double spaceBetween;
  TextIcon({
    required this.icon,
    required this.text,
    this.labelStart = false,
    this.spaceBetween = 5,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (labelStart) text,
        if (labelStart)
          SizedBox(
            width: 5,
          ),
        icon,
        if (labelStart == false)
          SizedBox(
            width: spaceBetween,
          ),
        if (labelStart == false) text,
      ],
    );
  }
}
