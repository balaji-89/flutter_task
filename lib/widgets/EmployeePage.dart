import 'package:flutter/material.dart';
import '../models/Employee details.dart';

class EmployeePage extends StatefulWidget {
  List<Employee> employeeDetails = [
    Employee(
      name: 'Employee1',
      age: 22,
      city: 'Chennai',
      isTeamLead: false,
      team: 'Team A',
    ),
    Employee(
      name: 'Employee2',
      age: 22,
      city: 'Chennai',
      isTeamLead: true,
      team: 'Team B',
    ),
  ];

  @override
  _EmployeePageState createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {
  final appBar = AppBar(
    title: Text('Employees'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Stack(
          children: [
            ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(15),
                  height: (MediaQuery.of(context).size.height -
                          appBar.preferredSize.height -
                          MediaQuery.of(context).padding.top) *
                      0.2,
                  child: Wrap(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(widget.employeeDetails[index].name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 7),
                                child: Text(
                                  'Age :' +
                                      (widget.employeeDetails[index].age)
                                          .toString(),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 7),
                                child: Text(
                                  'City :' + widget.employeeDetails[index].city,
                                ),
                              ),
                            ],
                          ),
                          Card(
                            child: Padding(
                              padding: EdgeInsets.all(9),
                              child: Text(
                                widget.employeeDetails[index].team,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            elevation: 5,
                          ),
//
                        ],
                      ),
                    ],
                  ),
                );
              },
              itemCount: widget.employeeDetails.length,
              separatorBuilder: (BuildContext context, index) {
                return Divider(
                  height: 3,
                  thickness: 3,
                );
              },
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 56),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: null,
                  child: Icon(Icons.add),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
