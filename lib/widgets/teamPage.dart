import 'package:flutter/material.dart';
import '../supportingWidgets/alertDialog.dart';

class TeamPage extends StatefulWidget {
  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  List<String> teams = ['Team A', 'Team B'];



 addingIntoTeam(String newTeam){
   setState(() {
     teams.add(newTeam);
   });

 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teams'),
      ),
      body: teams.isEmpty
          ? Center(
              child: Text('No Teams Yet!!'),
            )
          : Stack(
              children: [
                ListView.separated(
                  itemCount: teams.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 1),
                      child: FlatButton(
                        onPressed: () => print('pressed'),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            teams[index],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 3,
                      thickness: 2,
                    );
                  },
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 56),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                        child: Icon(Icons.add),
                        tooltip: 'Add Team',
                        onPressed: () {
                          addingNewTeams(context,'Add Teams','Cancel','Add').then((teamName){
                            addingIntoTeam(teamName);

                          });
                        }),
                  ),
                )
              ],
            ),
    );
  }
}
