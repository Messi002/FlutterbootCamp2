import 'package:flutter/material.dart';

const labelStyle = TextStyle(
    fontSize: 18.0, fontFamily: 'Pacifico', color: Palette.iconTextColor);
const bottomContainerHeight = 60.0;
const containerColor = Color(0xFF1D1E33);
const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);
const KNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const KTitleTextStyle = TextStyle(
  fontSize: 30.0,
  letterSpacing: 3,
// fontWeight: FontWeight.bold,
  // fontFamily: 'Pacifico',
);

const KResultTextStyle = TextStyle(
 color: Color(0xff24d876),
 fontSize: 22.0,
);

const KBMITextStyle = TextStyle(

 fontSize: 100.0,
 fontWeight: FontWeight.bold,
);

const KBodyTextStyle = TextStyle(

 fontSize: 17.0,

);


class Palette {
  static const bottomContainerMainColor = Color(0xFFEB1555);
  static const iconTextColor = Color(0xFF8D8E98);

  static const MaterialColor kToDark = MaterialColor(
    0xFF0A0E21, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFF0A0E21), //10%
      100: Color(0xFF0A0E21), //20%
      200: Color(0xFF0A0E21), //30%
      300: Color(0xFF0A0E21), //40%
      400: Color(0xFF0A0E21), //50%
      500: Color(0xFF0A0E21), //60%
      600: Color(0xFF0A0E21), //70%
      700: Color(0xFF0A0E21), //80%
      800: Color(0xFF0A0E21), //90%
      900: Color(0xFF0A0E21), //100%
    },
  );
}
