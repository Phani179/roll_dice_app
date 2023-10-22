import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int diceValue = 1;
  void rollDice() {
    setState(() {
      diceValue = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$diceValue.png',
          height: 200,
        ),
        const SizedBox(height: 30),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 20,
              )),
          child: const Text(
            "Roll Dice",
          ),
        ),
      ],
    );
  }
}
