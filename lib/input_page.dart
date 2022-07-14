// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables

import 'package:app6/app_Colors.dart';
import 'package:flutter/material.dart';
import 'icons_content.dart';
import 'package:app6/reusable_card.dart';

const bottomContainerHeight = 60.0;
const containerColor = Color(0xFF1D1E33);
const activeCardColor = Color(0xff1d1e33);
const inactiveCardColor = Color(0xff111328);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);
  @override
  _InputPageState createState() => _InputPageState();
}
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'app_Colors.dart';



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
          color: Color.fromARGB(255, 232, 232, 240),
        ),
        SizedBox(
          height: 2.0,
        ),
        Text(iconText,
            style: TextStyle(
                fontSize: 18.0, fontFamily: 'Pacifico',
                color: Palette.iconTextColor)),
      ],
    );
  }
}
class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Bmi Calculator',
            style: TextStyle(fontFamily: 'Pacifico'),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        //TODO: write stateful function
                      },
                      child: ReusableCard(
                        colour: containerColor,
                        cardChild: ReusableIconText(
                          iconText:'Male', icon: Icons.male,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: containerColor,
                       cardChild: ReusableIconText(
                        iconText:'Female', icon: Icons.female,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(colour: containerColor),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ReusableCard(colour: containerColor),
                  ),
                  Expanded(
                    child: ReusableCard(colour: containerColor),
                  ),
                ],
              ),
            ),
            Container(
              height: bottomContainerHeight,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
              color: Palette.bottomContainerMainColor,
            ),
          ],
        ),
      ),
    );
  }
}


