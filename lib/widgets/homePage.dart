import 'package:flutter/material.dart';
import 'teamPage.dart';
import 'EmployeePage.dart';

class HomePage extends StatelessWidget {
  final String tabTitle;

  HomePage({@required this.tabTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: FlatButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              tabTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black38,
            ),
          ],
        ),
        onPressed: tabTitle == 'Team'
            ? () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>TeamPage(),),);
        }
            : () => Navigator.push(context,MaterialPageRoute( builder: (context)=>EmployeePage(),),),
      ),
    );
  }
}