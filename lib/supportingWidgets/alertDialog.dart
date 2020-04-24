import 'package:flutter/material.dart';

Future<String> addingNewTeams(
    BuildContext context, dialogTitle, firstButton, secondButton) {
  TextEditingController teamName = TextEditingController();
  return showDialog(
    context: context,
    builder: (ctx) {
      return AlertDialog(
        elevation: 5,
        title: Text(dialogTitle),
        content: TextField(
          decoration: InputDecoration(
            hintText: 'Enter Name Here',
          ),
          controller: teamName,
        ),
        actions: <Widget>[
          MaterialButton(
            onPressed: () {
              return;
            },
            child: Text(
              firstButton,
              style: TextStyle(color: Colors.blue),
            ),
          ),
          MaterialButton(
            onPressed: () =>
                Navigator.of(context).pop(teamName.text.toString()),
            child: Text(
              secondButton,
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      );
    },
  );
}
