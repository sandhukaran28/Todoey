import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];
  int getLength() {
    return _tasks.length;
  }

  UnmodifiableListView<Task> getTasks() {
    return UnmodifiableListView(_tasks);
  }

  void checkState(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  void addTask(String name1) {
    final task = Task(name: name1);
    _tasks.add(task);
    notifyListeners();
  }
}
