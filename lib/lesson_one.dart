//import 'dart:ui';

import 'package:flutter/material.dart';

class LessonOne extends StatelessWidget {
  const LessonOne({Key? key}) : super(key: key);
  void buttonOnPressed(String msg) {
    // ignore: avoid_print
    print('$msg Clicked');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.center_focus_weak_sharp),
          title: const Text('Home Page'),
          actions: const [
            Icon(Icons.center_focus_weak_sharp),
            Icon(Icons.center_focus_weak_sharp),
            Icon(Icons.center_focus_weak_sharp),
          ],
          //backgroundColor: Colors.teal,
        ),
        body: Container(
          alignment: Alignment.center,
          //color: Colors.blueAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hello World!',
                    style: TextStyle(
                        color: Colors.black,
                        //backgroundColor: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                        wordSpacing: 0,
                        letterSpacing: 0,
                        shadows: [
                          Shadow(
                            offset: Offset(0, 10),
                            blurRadius: 10,
                            color: Colors.blue,
                          )
                        ]),
                  ),
                  Text(
                    'Hello World!',
                    style: TextStyle(
                        color: Colors.red,
                        //backgroundColor: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        wordSpacing: 0,
                        letterSpacing: 0,
                        decoration: TextDecoration.combine(
                          [TextDecoration.underline, TextDecoration.overline],
                        ),
                        decorationColor: Colors.black,
                        decorationStyle: TextDecorationStyle.wavy,
                        shadows: const [
                          Shadow(
                            offset: Offset(5, 5),
                            blurRadius: 10,
                            color: Colors.yellow,
                          )
                        ]),
                  ),
                  const Text(
                    'Hello World!',
                    style: TextStyle(
                        color: Colors.black,
                        //backgroundColor: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                        wordSpacing: 0,
                        letterSpacing: 0,
                        shadows: [
                          Shadow(
                            offset: Offset(0, 10),
                            blurRadius: 10,
                            color: Colors.blue,
                          )
                        ]),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(onPressed: () {
                    
                  }, child: const Text('A')),
                  OutlinedButton(onPressed: () {}, child: const Text('A')),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      //backgroundColor: MaterialStateProperty.all(Colors.red),
                      //foregroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.fromLTRB(20, 0, 20, 0)),
                    ),
                    onPressed: () {},
                    label: const Text('C'),
                    icon: const Icon(Icons.night_shelter),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () => buttonOnPressed('Button 1'),
                      icon: const Icon(Icons.center_focus_weak_sharp)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.center_focus_weak_sharp)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
