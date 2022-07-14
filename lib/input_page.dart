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
  // ignore_for_file: prefer_const_constructors

import 'package:app6/app_Colors.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key ? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Palette.kToDark, 
  appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF0A0E21)),

   
      
      ),
//       theme: ThemeData(

// appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
// textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white)),  
// scaffoldBackgroundColor: Palette.kToDark,  
//   colorScheme: ColorScheme.fromSwatch().copyWith(
//           secondary: Color.fromARGB(255, 177, 21, 204),
//         ),
//       ),
      home: InputPage(),
    );
  }
}





















// floatingActionButton:  Theme(
//         data: ThemeData(
//           colorScheme: ColorScheme.fromSwatch().copyWith(
//             secondary: Colors.purple
//           )
//           ),
//         child: FloatingActionButton(
//           onPressed : null,
//           child: Icon(Icons.add),
//         ),
//       ),
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


