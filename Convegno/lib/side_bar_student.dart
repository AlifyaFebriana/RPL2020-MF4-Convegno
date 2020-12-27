import 'package:flutter/material.dart';
import 'package:convegno/home_student.dart';
import 'package:convegno/student_page.dart';

class SideBarStudent extends StatefulWidget {
  @override
  _SideBarStudentState createState() => _SideBarStudentState();
}

class _SideBarStudentState extends State<SideBarStudent> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5.0,
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding:
                EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
            leading: Icon(Icons.exit_to_app, size: 30.0),
            title: Text("Leave Meeting"),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => StudentPage()));
            },
          ),
        ],
      ),
    );
  }
}
