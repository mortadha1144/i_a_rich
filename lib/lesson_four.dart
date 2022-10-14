import 'package:flutter/material.dart';
import 'package:i_a_rich/info.dart';
import 'package:intl/intl.dart';

Color b = Colors.black;
Color w = Colors.white;

class LessonFour extends StatelessWidget {
  final List<Info> li = [
    Info(name: 'Mortadha1', height: 170, date: DateTime.now()),
    Info(name: 'Narjes', height: 175, date: DateTime.now()),
    Info(name: 'Fatima', height: 180, date: DateTime.now()),
    Info(name: 'Rafal', height: 185, date: DateTime.now()),
    Info(name: 'Mortadha5', height: 190, date: DateTime.now()),
    Info(name: 'Mortadha6', height: 190, date: DateTime.now()),
    Info(name: 'Mortadha7', height: 190, date: DateTime.now()),
    Info(name: 'Mortadha8', height: 190, date: DateTime.now()),
    Info(name: 'Mortadha9', height: 190, date: DateTime.now()),
  ];

  void x(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return ListView.builder(
            itemCount: li.length,
            itemBuilder: (_, index) => Padding(
              padding: const EdgeInsets.all(4),
              child: Card(
                color: Theme.of(ctx).accentColor,
                shadowColor: Colors.black,
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            li[index].name,
                            style: TextStyle(color: w, fontSize: 25),
                          ),
                          Text(
                            '${li[index].height}',
                            style: TextStyle(color: w, fontSize: 20),
                          ),
                        ],
                      ),
                      Text(
                        DateFormat('dd/MM/yyyy').format(li[index].date),
                        style: TextStyle(color: w, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  LessonFour({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter App',
          style: TextStyle(color: b),
        ),
      ),
      body: Container(
        color: w,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => x(context),
        child: const Icon(Icons.add),
      ),
    );
  }
}
