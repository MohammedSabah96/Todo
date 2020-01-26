import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/task_data.dart';

class AddTask extends StatelessWidget {
  final Function toggleCallBack;
  AddTask({this.toggleCallBack});
  @override
  Widget build(BuildContext context) {
    String textValue;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              onChanged: (value) {
                textValue = value;
              },
            ),
            SizedBox(
              height: 15.0,
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              onPressed: () {
                if (textValue != null) {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(textValue);
                  Navigator.pop(context);
                }
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
