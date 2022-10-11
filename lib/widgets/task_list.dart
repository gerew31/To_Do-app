import 'package:flutter/material.dart';
import 'package:todoe/models/task_data.dart';
import 'package:todoe/widgets/task_tile.dart';
import 'package:todoe/models/task.dart';
import 'package:provider/provider.dart';

class TasksList extends StatefulWidget {

  @override
  State<TasksList> createState() => _TasksListState();
}


class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,  taskData, child){
        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            final taskItem = taskData.tasks[index];
            return TaskTile(
              longCallPress: (){
                taskData.deleteTask(taskItem);
              },
              taskTitle: taskItem.name,
              isChecked:taskItem.isDone,
              checkboxCallBack: (newValue) {
                taskData.updateTask(taskItem);
              },
            );
          },
          itemCount: taskData.taskcount,
        );
      },

    );
  }
}
