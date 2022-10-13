import 'package:flutter/material.dart';
import 'package:i_a_rich/age.dart';

class LessonTwo extends StatefulWidget {
  const LessonTwo({Key? key}) : super(key: key);

  @override
  State<LessonTwo> createState() => _LessonTwoState();
}

class _LessonTwoState extends State<LessonTwo> {
  bool passwordVisible = true;
  var myController = TextEditingController();
  int? str = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Title'),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        //color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Container(
                margin: const EdgeInsets.all(8),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Birth Year',
                    labelStyle: TextStyle(fontSize: 30),
                    hintText: 'Enter Your Birth Year',
                    hintStyle: TextStyle(fontSize: 20),
                  ),
                  controller: myController,
                  keyboardType: TextInputType.number,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                child: ElevatedButton(
                  onPressed: () => setState(() {
                    AgeCalculator(int.parse(myController.text));
                    str=AgeCalculator.age;
                  }),
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.fromLTRB(30, 10, 30, 10))),
                  child: const Text(
                    'Get Value',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                child:  Text(
                  'Your Age is $str Years Old',
                  ),
                ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
      ),
    );
  }
}
