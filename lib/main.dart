import 'package:flutter/material.dart';
import 'screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'models/tasks_data.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}
