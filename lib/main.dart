import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore=0;

  final _questions = const [
    {
      "questionText": "what is your favourtie colour ?",
      "answers": [{'text':'RED','score':1},{'text': 'BLUE','score':2}, {'text':'GREEN','score':3}]
    },
    {
      "questionText": "what is your favourtie Animal ?",
      "answers": [{'text':'LION','score':1}, {'text':'GOAT','score':2}, {'text':'CROCODILE','score':3}]
    },
    {
      "questionText": "what is your favourtie Pet ?",
      "answers": [{'text':'Hen','score':1}, {'text':'Cat','score':2}, {'text':'Dog','score':3}]
    },
  ];

  void _answerQuestion(int score) {

    
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;       
      });
       _totalScore=_totalScore+score;
    }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Text("My First App.."),
          ),
          body: (_questionIndex < _questions.length)
              ? Quiz(answerQuestion:_answerQuestion,questions:_questions,questionIndex:_questionIndex)
              : Result(_totalScore)),
    );
  }
}

class Person {
  String name;
  int age;
  Person({String name, int age}) {}
}
