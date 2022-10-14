import 'package:flutter/material.dart';
import 'package:i_a_rich/text.dart';

class LessonThree extends StatefulWidget {
  const LessonThree({Key? key}) : super(key: key);

  @override
  State<LessonThree> createState() => _LessonThreeState();
}

class _LessonThreeState extends State<LessonThree> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Title',style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        //margin: const EdgeInsets.all(18),
        padding: const EdgeInsets.all(18.0),
        color: Colors.redAccent,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyText('aaa', s),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyText('sss', s2),
            ),
          ],
        ),
      ),
    );
  }
}
