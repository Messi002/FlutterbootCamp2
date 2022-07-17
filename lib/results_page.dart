// ignore_for_file: prefer_const_constructors

import 'package:app6/app_Colors.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Bmi Calculator', style: labelStyle)),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 30.0),
                child: Text(
                  'Your Results',
                  style: KTitleTextStyle,
                ),
              ),
            ),
          ],
        ));
  }
}
