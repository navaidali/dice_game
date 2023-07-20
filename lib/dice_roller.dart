import 'package:dice_game/styled_text.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  var activeImage = 'assets/images/dice-2.png';
  void rollDice(){
    int diceNo= Random().nextInt(6)+1;
    setState(() {
      activeImage = 'assets/images/dice-$diceNo.png';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
           Image(
            image: AssetImage(activeImage),
            width: 300.0,
          ),
          TextButton(
            onPressed: rollDice,
            child: const StyleText("Roll Dice"),
          ),
        ],
      ),
    );
  }
}
