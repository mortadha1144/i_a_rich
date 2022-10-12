import 'dart:ui';

import 'package:flutter/material.dart';

class LessonTwo extends StatefulWidget {
  const LessonTwo({Key? key}) : super(key: key);

  @override
  State<LessonTwo> createState() => _LessonTwoState();
}

class _LessonTwoState extends State<LessonTwo> {
  String name = 'Hello Mortadha';
  String text1 = 'Hello World!';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AppBar Title'),
        ),
        body: Container(
          //color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 40),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: 'Text Field',
                      labelStyle: TextStyle(fontSize: 30),
                      hintText: 'Enter Text',
                      hintStyle: TextStyle(fontSize: 20),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(fontSize: 30),
                      hintText: 'Enter Name',
                      hintStyle: TextStyle(fontSize: 20),
                      icon: Icon(Icons.person_outline),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: 'E-Mail',
                      labelStyle: TextStyle(fontSize: 30),
                      hintText: 'Enter E-Mail',
                      hintStyle: TextStyle(fontSize: 20),
                      icon: Icon(Icons.alternate_email),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 30),
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(fontSize: 20),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  child: const TextField(
                    decoration: InputDecoration(
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(fontSize: 30),
                        hintText: 'Enter Phone Number',
                        hintStyle: TextStyle(fontSize: 20),
                        icon: Icon(Icons.phone)),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
