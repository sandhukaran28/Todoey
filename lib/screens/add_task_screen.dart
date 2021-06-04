import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/tasks_data.dart';
import '../models/task.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name;
    return Container(
      decoration: BoxDecoration(color: Color(0xff757575)),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (value) {
                name = value;
              },
            ),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addTask(name);
                Navigator.pop(context);
                print('pressed');
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlueAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
