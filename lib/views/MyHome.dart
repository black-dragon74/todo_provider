import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/models/TODOModel.dart';
import 'package:todo_provider/widgets/LocalClock.dart';
import 'package:todo_provider/widgets/MyListWidget.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<TODOModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Reactive TODO'),
        backgroundColor: Colors.lightBlue.shade900,
      ),
      backgroundColor: Colors.lightBlue.shade900,
      body: Column(
        children: <Widget>[
          LocalClock(),
          MyListApp(data: data),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        tooltip: 'Add new ToDO',
        onPressed: () {
          Provider.of<TODOModel>(context, listen: false).addTask();
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
