import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  //reference of the box
  List toDoList = [];
  final _mybox = Hive.box('mybox');

  // run if first time running tutorial
  void createInitialData() {
    toDoList = [
      ["Download stillLeft App", true]
    ];
  }

  //load database
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  //upload database
  void updateDatabase() {
    _mybox.put("TODOLIST", toDoList);
  }
}
