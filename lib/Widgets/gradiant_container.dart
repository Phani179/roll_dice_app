import 'package:flutter/material.dart';
import 'package:flutter_app/Widgets/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> gradientColors;
  const GradientContainer({super.key, required this.gradientColors});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: DiceRoller(),
    );
  }
}
