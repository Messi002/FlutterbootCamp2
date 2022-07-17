import 'package:flutter/material.dart';
import 'package:MIRBMI/app_Colors.dart';



class CalButton extends StatelessWidget {
    CalButton({required this.labels, this.onPressed});

    final String labels;
    final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: bottomContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        color: Palette.bottomContainerMainColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(labels,
                style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 4.0,
                    color: Colors.white))
          ],
        ),
      ),
    );
  }
}
