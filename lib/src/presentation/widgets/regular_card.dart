import 'package:flutter/material.dart';


class RegularCard extends StatelessWidget {
  const RegularCard({
    required this.animationValue,
    required this.animationDuration,
    required this.color,
    super.key,
  });

  final int animationValue;
  final Duration animationDuration;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: animationDuration,
      height: MediaQuery.of(context).size.height * 0.28,
      padding: const EdgeInsets.all(24),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: color,
      ),
      child: AnimatedDefaultTextStyle(
        duration: animationDuration,
        style: TextStyle(
          // Configures a color for the text that depends on the
          // animation value.
          color: Colors.white.withOpacity(
            (animationValue / 100).clamp(0.3, 0.9),
          ),
          fontSize: 25,
        ),
        child: const Text(
          'Regular',
        ),
      ),
    );
  }
}
