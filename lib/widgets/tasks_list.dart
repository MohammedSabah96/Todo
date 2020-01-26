import 'package:flutter/material.dart';
import '../widgets/task_tile.dart';
import 'package:todoey/model/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              textTask: taskData.name(index),
              isChecked: taskData.isDone(index),
              toggleCheckBoxState: (checkboxState) {
                taskData.checkBoxState(index);
              },
              onLongPress: () {
                taskData.deleteTask(index);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
