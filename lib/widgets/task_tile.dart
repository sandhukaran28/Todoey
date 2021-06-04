import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool checkState;
  final String name;
  final Function changeCheckState;
  final Function longPress;
  TaskTile({this.name, this.checkState, this.changeCheckState, this.longPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
            decoration: checkState ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkState,
        onChanged: changeCheckState,
      ),
      onLongPress: longPress,
    );
  }
}
