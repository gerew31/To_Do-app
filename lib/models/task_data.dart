import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todoe/models/task.dart';
import 'package:todoe/screen/tasks_screen.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {

  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy chips'),
    Task(name: 'Buy wood'),
  ];

  List<Task> get tasks{
    return _tasks;
  }

int get taskcount {
  return _tasks.length;
}


  void addTask (text){
    _tasks.add(Task(name: text));
    notifyListeners();
  }


  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }


  void deleteTask (Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}