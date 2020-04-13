import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_provider/models/TODOModel.dart';
import 'package:todo_provider/widgets/LocalClock.dart';

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
          Expanded(
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
          ),
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
