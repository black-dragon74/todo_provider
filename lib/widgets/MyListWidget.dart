import 'package:flutter/material.dart';
import 'package:todo_provider/models/TODOModel.dart';

class MyListApp extends StatelessWidget {
  const MyListApp({
    Key key,
    @required this.data,
  }) : super(key: key);

  final TODOModel data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: ListView.builder(
          itemCount: data.taskList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
              child: ListTile(
                contentPadding: EdgeInsets.fromLTRB(32, 8, 32, 8),
                title: Text(
                  data.taskList[index].getTitle,
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  data.taskList[index].getDetail,
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
