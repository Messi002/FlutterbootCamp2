

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'questions.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key ? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key ? key}):super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _QuizPageState createState() => _QuizPageState();
}
  
class _QuizPageState extends State<QuizPage> {
List<Widget> scoreKeeper = [];

List<Question> questionbank=[
Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
Question(q: 'Approximately one quarter of human bones are in the feet.', a: true),
 Question(q: 'A slug\'s blood is green.', a: true)
];

int questionNum = 0;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
         Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionbank[questionNum].q,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
             style: TextButton.styleFrom(
               primary: Colors.white,
              backgroundColor: Colors.green,
             ),
              child: const Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool correctAnswers = questionbank[questionNum].a;
               setState(() {
                questionNum++;
                 scoreKeeper.add(
                  Icon(Icons.check, color: Colors.green,)
                 );
               });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
               primary: Colors.white,
              backgroundColor: Colors.red,
             ),
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                   setState(() {
                questionNum--;

                 scoreKeeper.add(
                  Icon(Icons.close, color: Colors.red,)
                 );
               });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper
        ),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
