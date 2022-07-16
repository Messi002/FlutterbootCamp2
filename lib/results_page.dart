import 'package:app6/app_Colors.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bmi Calculator',style:labelStyle)
      ),
      body: const Center(child: Text('Hello',style: labelStyle,),),
    );
  }
}