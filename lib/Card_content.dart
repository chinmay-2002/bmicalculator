import 'package:flutter/material.dart';

const textLower = TextStyle(
  fontSize: 18.0,
  color: Colors.white,
);
const iconSize = 80.0;

class IndividualCard extends StatelessWidget {
  IndividualCard({required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Icon(
          icon,
          size: iconSize,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(label, style: textLower )

      ],
    );
  }
}