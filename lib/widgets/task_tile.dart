import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String textTask;
  final Function toggleCheckBoxState;
  final Function onLongPress;
  TaskTile(
      {this.isChecked,
      this.textTask,
      this.toggleCheckBoxState,
      this.onLongPress});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        textTask,
        style: TextStyle(
            fontSize: 20.0,
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        onChanged: toggleCheckBoxState,
        value: isChecked,
      ),
    );
  }
}
