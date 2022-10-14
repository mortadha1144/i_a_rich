import 'package:flutter/material.dart';
import 'package:i_a_rich/lesson_four.dart';
//import 'package:i_a_rich/lesson_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.pinkAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: LessonFour(),
    );
  }
}
