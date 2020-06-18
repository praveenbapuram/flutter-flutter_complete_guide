import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return  MyAppState();
  }

}
class MyAppState extends State<MyApp> {
   var questionIndex=0;
  void answerQuestion() {
    setState((){
      questionIndex=questionIndex+1;
    });
   
    print(questionIndex);
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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
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
