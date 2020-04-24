import 'package:flutter/material.dart';
import './widgets/homePage.dart';

void main() => runApp(FlutterTasks());

class FlutterTasks extends StatefulWidget {
  @override
  _FlutterTasksState createState() => _FlutterTasksState();
}

class _FlutterTasksState extends State<FlutterTasks> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluter_Task',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Column(
          children: <Widget>[
            HomePage( tabTitle:'Team'),
            HomePage( tabTitle:'Employees'),

          ],
        ),
      ),
    );
  }
}