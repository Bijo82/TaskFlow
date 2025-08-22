import 'package:hive_flutter/hive_flutter.dart';

class tododatabase {
  List todolist = [];

  //reference
  final _mybox = Hive.box('mybox');

  //run this method if this is the 1st time ever opening this app
  void createInitialData() {
    todolist = [
      ["Welcome to TaskFlow! 🎉", false],
      ["✅ Tap the checkbox to complete this task", false],
      ["⬅️ Swipe left to delete a task", false],
      ["Click the '+' button to add a new task", false],
    ];
  }

  //load the data from database
  void loaddata(){
    todolist = _mybox.get("TODOLIST");
  }

  //update the database
  void updateDataBase(){
    _mybox.put("TODOLIST", todolist);


  }
}
