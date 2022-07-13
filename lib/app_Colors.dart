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