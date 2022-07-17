// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app6/app_Colors.dart';
import 'package:app6/components/bottom_button.dart';
import 'package:app6/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('MIR Bmi', style: labelStyle)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Expanded(
            //   child: Container(
            //     margin: EdgeInsets.only(left: 30.0),
            //     child: Center(
            //       child: Text(
            //         'Your Results',
            //         style: KTitleTextStyle,
            //       ),
            //     ),
            //   ),
            // ),
            Expanded(
              flex: 7,
              child: ReusableCard(colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Your Results',
                    style: KTitleTextStyle,
                  ),
                      Text('Normale', style: KResultTextStyle,),
                      Text('18.3', style: KBMITextStyle,),
                      Text('Your BMI result is quite low, you should eat more',textAlign: TextAlign.center,style: KBodyTextStyle,),
                    
                ],
                  
              ),
              ) 
            ),
CalButton(labels: 'RECALCULATE', onPressed: (){
                        Navigator.pushNamed(context, 'HomePage');
                      },),
          ],
        ));
  }
}
