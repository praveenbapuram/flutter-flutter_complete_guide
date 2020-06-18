import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("My First App.."),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]["questionText"]),
            ...(questions[_questionIndex]["answers"] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}

class Person {
  String name;
  int age;
  Person({String name, int age}) {}
}
