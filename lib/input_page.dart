// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables

import 'package:app6/app_Colors.dart';
import 'package:flutter/material.dart';
import 'icons_content.dart';
import 'package:app6/reusable_card.dart';

const bottomContainerHeight = 60.0;
const containerColor = Color(0xFF1D1E33);
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

enum GenderType{
   male,
   female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColour = inactiveCardColor;
  Color femaleCardColour = inactiveCardColor;

  late GenderType selectedGen;

  //male =1 and female =2
  // void updateState(GenderType selectedGen){
    // maleCardColour == inactiveCardColor ? maleCardColour =activeCardColor && :  maleCardColour= inactiveCardColor;
  //     if(selectedGen == GenderType.male){
  //       if(maleCardColour == inactiveCardColor ){
  //           maleCardColour =activeCardColor;
  //           femaleCardColour = inactiveCardColor;
  //       }else{
  //                  maleCardColour= inactiveCardColor;
  //       }
  //     }
  //      if(selectedGen == GenderType.female){
  //       if(femaleCardColour == inactiveCardColor ){
  //           femaleCardColour =activeCardColor;
  //           maleCardColour = inactiveCardColor;
  //       }else{
  //                  femaleCardColour= inactiveCardColor;
  //       }
  //     }
      
  // }
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
                        setState(() {
                            selectedGen = GenderType.male;
                        });
                      },
                      child: ReusableCard(
                        colour: maleCardColour ,
                        cardChild: ReusableIconText(
                          iconText:'Male', icon: Icons.male,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedGen = GenderType.female;
                        });
                      },
                      child: ReusableCard(
                        colour: femaleCardColour,
                         cardChild: ReusableIconText(
                          iconText:'Female', icon: Icons.female,
                        ),
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


