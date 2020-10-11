import 'package:flutter/material.dart';

import './question.dart';
import './answers.dart';

void main() => runApp(
    MyApp()); //pass core widget to runApp need () or else it would be a type

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //TODO: implement createState
    return MyAppState();
  }
}

//state belongs to myapp{
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    _questionIndex = _questionIndex + 1;
    print(_questionIndex);
  }

  @override //code below overrides StatelessWidget's build method, this is cleaner
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
          Question(
            questions[_questionIndex],
          ),
          Answer(),
          Answer(),
          Answer(),
        ]),
      ),
    );
  }
}
