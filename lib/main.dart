import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blueGrey,
          title: Text("My First App.."),
        ),
        body: Text("This is my Default Text in body"),
      ),
    );
  }
}

class Person {
  String name;
  int age;
  Person({String name, int age}) {}
}
