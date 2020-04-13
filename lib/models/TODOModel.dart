import 'package:flutter/cupertino.dart';

import 'TaskModel.dart';

class TODOModel extends ChangeNotifier {
  /// A list of all the tasks that needs to be done
  /// Stores instances of [TaskModel]
  List<TaskModel> taskList = [
    TaskModel(title: 'Watch a movie', detail: 'Watch 10 things I hate about you.')
  ];

  /// Add's a new task to the [taskList]
  void addTask() {
    TaskModel t = TaskModel(title: 'Test task', detail: 'This is a test task');
    taskList.add(t);

    notifyListeners();
  }
}
