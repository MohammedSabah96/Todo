import 'package:flutter/material.dart';
import './tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];
  int selectedIndex;
  int get taskCount {
    return _tasks.length;
  }

  String name(int index) {
    selectedIndex = index;
    return _tasks[index].name;
  }

  bool isDone(int index) {
    return _tasks[index].isDone;
  }

  void addTask(String taskName) {
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }

  void checkBoxState(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
