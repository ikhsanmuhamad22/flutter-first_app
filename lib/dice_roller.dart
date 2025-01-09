import 'package:flutter/material.dart';
import 'dart:math';

final randomazer = Random();

class DiceRoler extends StatefulWidget {
  const DiceRoler({super.key});

  @override
  State<DiceRoler> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoler> {
  var actveDiceImage = 'assets/images/dice-1.png';
  var currentDiceRole = 1;

  void rolldice() {
    setState(() {
      currentDiceRole = randomazer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRole.png',
          width: 200,
        ),
        SizedBox(height: 20),
        TextButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28)),
            child: Text('Roll dice'))
      ],
    );
  }
}
