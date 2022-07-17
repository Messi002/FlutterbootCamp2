// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables

import 'package:app6/app_Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:app6/components/icons_content.dart';
import 'package:app6/components/reusable_card.dart';
import 'package:app6/components/bottom_button.dart';


enum GenderType {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = kInactiveCardColor;
  Color femaleCardColour = kInactiveCardColor;

  GenderType? selectedGen;
  int _height = 180;
  int weightNum = 60;
  int _age = 19;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'MIR Bmi',
            style: TextStyle(fontFamily: 'Pacifico'),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ReusableCard(
                      onTapped: () {
                        setState(() {
                          selectedGen = GenderType.male;
                        });
                      },
                      colour: selectedGen == GenderType.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: ReusableIconText(
                        iconText: 'Male',
                        icon: Icons.male,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onTapped: () {
                        setState(() {
                          selectedGen = GenderType.female;
                        });
                      },
                      colour: selectedGen == GenderType.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: ReusableIconText(
                        iconText: 'Female',
                        icon: Icons.female,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: containerColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: labelStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        // Text('${_height}',style:KNumberTextStyle),
                        Text(_height.toString(), style: KNumberTextStyle),

                        Text(
                          'cm',
                          style: labelStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0xFF8D8E98),
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0)),
                      child: Slider.adaptive(
                        value: _height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            _height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: containerColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Weight',
                            style: labelStyle,
                          ),
                          Text(
                            weightNum.toString(),
                            style: KNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(Icon(Icons.remove), () {
                                setState(() {
                                  weightNum--;
                                });
                              }),
                              SizedBox(width: 10.0),
                              RoundIconButton(Icon(Icons.add), () {
                                setState(() {
                                  weightNum++;
                                });
                              }),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: containerColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Age',
                            style: labelStyle,
                          ),
                          Text(
                            _age.toString(),
                            style: KNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(Icon(Icons.remove), () {
                                setState(() {
                                  _age--;
                                });
                              }),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(Icon(Icons.add), () {
                                setState(() {
                                  _age++;
                                });
                              }),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // CalButton('Calculate'), without required keyword
            CalButton(labels: "CALCULATE", onPressed: () {
        Navigator.pushNamed(context, 'calScreen');
      })
          ],
        ),
      ),
    );
  }
}


class RoundIconButton extends StatelessWidget {
  RoundIconButton(this.buttonWidget, this.addSub);

  final Widget buttonWidget;
  final VoidCallback addSub;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: addSub,
      elevation: 10.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4c4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: buttonWidget,
    );
  }
}
