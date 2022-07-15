import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.cardChild});

  final Color colour;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.deepPurple.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
