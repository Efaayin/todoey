import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.only(
          left: 30.0,
          right: 30.0,
          top: 30.0,
          bottom: 30.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: textFieldBorder(),
                focusedBorder: textFieldBorder(),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Add'),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.lightBlueAccent),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.symmetric(vertical: 20.0)),
              ),
            )
          ],
        ),
      ),
    );
  }

  UnderlineInputBorder textFieldBorder() {
    return UnderlineInputBorder(
      borderSide: BorderSide(
        style: BorderStyle.solid,
        color: Colors.lightBlueAccent,
        width: 2.0,
      ),
    );
  }
}
