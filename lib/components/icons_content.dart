// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:app6/app_Colors.dart';


class ReusableIconText extends StatelessWidget {
  ReusableIconText({required this.iconText, this.icon});

  final IconData? icon;
  final String iconText; 

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          semanticLabel: 'Icon',
          color: Color.fromARGB(255, 232, 232, 240),
        ),
        SizedBox(
          height: 2.0,
        ),
        Text(iconText,
            style: labelStyle),
      ],
    );
  }
}