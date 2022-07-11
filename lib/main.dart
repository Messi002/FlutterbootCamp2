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