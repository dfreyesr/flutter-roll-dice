import 'package:flutter/material.dart';
import 'package:roll_dice/styled_text.dart';
import 'gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          body: GradientContainer(
              Color.fromRGBO(130, 0, 223, 1),
              Color.fromRGBO(44, 0, 75, 1),
              StyledText('Welcome to roll dice!',
                  Color.fromRGBO(247, 208, 255, 1), 25))),
    );
  }
}
