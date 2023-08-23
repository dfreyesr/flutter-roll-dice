import 'package:flutter/material.dart';
import 'styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.texto, {super.key});

  final Color color1;
  final Color color2;
  final StyledText texto;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color1, color2],
                begin: startAlignment,
                end: endAlignment)),
        child: Center(child: texto));
  }
}
