import 'package:flutter/material.dart';
import 'package:roll_dice/styled_text.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceActive = 'assets/images/dice-2.png';
  var diceActive2 = 'assets/images/dice-4.png';

  final randomGen = Random();

  void rollDice() {
    var diceRoll = randomGen.nextInt(6) + 1;
    var diceRoll2 = randomGen.nextInt(6) + 1;

    setState(() {
      diceActive = 'assets/images/dice-$diceRoll.png';
      diceActive2 = 'assets/images/dice-$diceRoll2.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(),
          child: Image.asset(diceActive),
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(),
          child: Image.asset(diceActive2),
        ),
      ],
    );
  }
}
