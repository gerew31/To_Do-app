import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoe/models/task.dart';
import 'package:flutter/rendering.dart';
import 'package:todoe/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String? textData;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: Colors.white,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                onChanged: (newValue){
                  textData = newValue;
                },
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.lightBlueAccent))),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: (){
                  Provider.of<TaskData>(context, listen: false).addTask(textData);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlueAccent),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
