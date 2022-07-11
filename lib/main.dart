import 'package:app6/appColors.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key ? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
// primaryColor: Colors.red, 
// primarySwatch: Palette.kToDark, 
appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white)),  
scaffoldBackgroundColor: Palette.kToDark,  
  colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFF0A0E21),
        ),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({Key ? key}):super(key: key);
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: const Center(
        child: Text('Body Text',),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed : null,
        child: Icon(Icons.add),
      ),
    );
  }
}
