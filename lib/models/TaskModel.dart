class TaskModel {
  String _title;
  String _detail;

  /// Get the [title] of the Task
  String get getTitle => _title;

  /// Get the [detail] of the Tash
  String get getDetail => _detail;

  TaskModel({String title, String detail}) {
    this._title = title;
    this._detail = detail;
  }
}
