import 'package:hive/hive.dart';

class ToDoDatabase {

  List toDoList = [];

  void createInitialDataBase() {
    toDoList = [
      ['Do some exercises', false,],
      ['Buy a new book', false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }

  final _myBox = Hive.box('myBox');

}