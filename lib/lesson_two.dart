import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LessonTwo extends StatefulWidget {
  const LessonTwo({Key? key}) : super(key: key);

  @override
  State<LessonTwo> createState() => _LessonTwoState();
}

class _LessonTwoState extends State<LessonTwo> {
  var c = Colors.orange;
  String name = 'Hello Mortadha';
  String text1= 'Hello World!';
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: c,
      ),
      body: Text(text1),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            text1=name;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
