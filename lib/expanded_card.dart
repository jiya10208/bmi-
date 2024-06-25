import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
    required this.childContainer,
    required this.colour,
    this.onPress,
  });

  final Color colour;
  final Widget childContainer;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Expanded(
        child: Container(
          margin: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: childContainer,
        ),
      ),
    );
  }
}
