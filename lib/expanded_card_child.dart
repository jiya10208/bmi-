import 'package:flutter/material.dart';

class ReusableCardChild extends StatelessWidget {
  const ReusableCardChild({
    super.key,
    required this.childIcon,
    required this.childText,
  });

  final IconData childIcon;
  final String childText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          childIcon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          childText,
        )
      ],
    );
  }
}
