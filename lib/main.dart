import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return  _MyAppState();
  }

}
class _MyAppState extends State<MyApp> {
   var _questionIndex=0;
  void _answerQuestion() {
    setState((){
      _questionIndex=_questionIndex+1;
    });
   
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
   
    var questions = [
      'what is your favourite Animal?',
      'what\'s your favourite color?',
      'what\'s your favourite pet?',
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
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print('answer 2 chosen'),
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {//Anonymous function
                print('answer 3 chosen');
              },
            ),
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
