import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, this.colorText, this.fontSizeText, {super.key});

  final String text;
  final Color colorText;
  final double fontSizeText;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: colorText, fontSize: fontSizeText),
      textAlign: TextAlign.center,
    );
  }
}
