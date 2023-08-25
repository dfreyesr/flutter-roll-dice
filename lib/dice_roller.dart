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
  final randomGen = Random();

  void rollDice() {
    var diceRoll = randomGen.nextInt(6) + 1;

    setState(() {
      diceActive = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          diceActive,
          width: 200,
        ),
        const SizedBox(
          height: 40,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: const Color.fromRGBO(243, 132, 255, 1),
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
          ),
          child: const StyledText('Roll', Color.fromRGBO(255, 242, 212, 1), 30),
        ),
      ],
    );
  }
}
