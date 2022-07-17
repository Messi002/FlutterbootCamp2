// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:MIRBMI/app_Colors.dart';
import 'package:MIRBMI/components/bottom_button.dart';
import 'package:MIRBMI/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiText, required this.bmiResult, required this.bmiInter});

  final bmiText;
  final bmiResult;
  final bmiInter;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: const Text('MIR Bmi', style: labelStyle)),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Your Results',
                    style: KTitleTextStyle,
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: ReusableCard(colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // Text(
                    //   'Your Results',
                    //   style: KTitleTextStyle,
                    // ),
                        Text(bmiText, style: KResultTextStyle,),
                        Text(bmiResult, style: KBMITextStyle,),
                        Text(bmiInter,textAlign: TextAlign.center,style: KBodyTextStyle,),
                      
                  ],
                    
                ),
                ) 
              ),
    CalButton(labels: 'RE-CALCULATE', onPressed: (){
                          Navigator.pop(context);
                        },),
            ],
          )),
    );
  }
}
