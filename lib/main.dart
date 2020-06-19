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

  final _questions = const [
    {
      "questionText": "what is your favourtie colour ?",
      "answers": ['RED', 'BLUE', 'GREEN']
    },
    {
      "questionText": "what is your favourtie Animal ?",
      "answers": ['LION', 'GOAT', 'CROCODILE']
    },
    {
      "questionText": "what is your favourtie Pet ?",
      "answers": ['Hen', 'Cat', 'Dog']
    },
  ];

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
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
              : Result()),
    );
  }
}

class Person {
  String name;
  int age;
  Person({String name, int age}) {}
}
