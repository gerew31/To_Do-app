import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? taskTitle;
  final void Function(bool?)? checkboxCallBack;
  final void Function()? longCallPress;

  TaskTile({this.isChecked = false, this.taskTitle, this.checkboxCallBack, this.longCallPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longCallPress,
      title: Text(
        taskTitle!,
        style: TextStyle(
          decoration: isChecked == true ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallBack,
      ),
    );
  }
}

