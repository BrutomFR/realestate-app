import 'package:flutter/material.dart';

class ButtonTextRadius extends StatelessWidget {
  final Text text;
  final void Function() onTap;
  final Color colorButton;
  final Color colorText;
  final BorderRadius border;
  final double width;
  final double height;
  ButtonTextRadius(
      {Key? key,
      required this.onTap,
      this.width = 150,
      this.height = 40,
      required this.text,
      this.colorButton = Colors.black,
      this.colorText = Colors.white,
      required this.border})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: onTap,
        child: text,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(colorButton),
          foregroundColor: MaterialStateProperty.all<Color>(colorText),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: border,
            ),
          ),
        ),
      ),
    );
  }
}
