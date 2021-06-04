import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';
import '../models/tasks_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
            itemBuilder: (context, index) {
              return TaskTile(
                name: taskdata.getTasks()[index].name,
                checkState: taskdata.getTasks()[index].isDone,
                changeCheckState: (value) {
                  taskdata.checkState(taskdata.getTasks()[index]);
                },
                longPress: () {
                  taskdata.deleteTask(index);
                },
              );
            },
            itemCount: taskdata.getLength());
      },
    );
  }
}
