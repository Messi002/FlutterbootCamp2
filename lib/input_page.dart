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

class _InputPageState extends State<InputPage> {
  @override
  import 'package:flutter/material.dart'; 

class Palette { 
  static const bottomContainerMainColor = Color(0xFFEB1555);
  static const iconTextColor = Color(0xFF8D8E98);

  
  static const MaterialColor kToDark =  MaterialColor( 0xFF0A0E21, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
     <int, Color>{ 
      50:  Color(0xFF0A0E21 ),//10% 
      100:  Color(0xFF0A0E21),//20% 
      200:  Color(0xFF0A0E21),//30% 
      300:  Color(0xFF0A0E21),//40% 
      400:  Color(0xFF0A0E21),//50% 
      500:  Color(0xFF0A0E21),//60% 
      600:  Color(0xFF0A0E21),//70% 
      700:  Color(0xFF0A0E21),//80% 
      800:  Color(0xFF0A0E21),//90% 
      900:  Color(0xFF0A0E21),//100% 
    }, 
  ); 
} 
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


