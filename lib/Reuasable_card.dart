import 'package:flutter/material.dart';

class Reausable extends StatelessWidget {
  Reausable({required this.colour, required this.cardChild});
  final Widget cardChild ;
  final Color colour ;
  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.all(10),
      child: cardChild,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
    );
  }
}
