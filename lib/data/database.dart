import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];
  final _myBox = Hive.box('myBox');
  // first time ever opening the app
  void createInitialData() {
    todoList = [
      ['Make tutorial', false],
      ['Do Exercise', false],
    ];
    // load the data
  }

  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  void updateData() {
    _myBox.put("TODOLIST", todoList);
  }
}
