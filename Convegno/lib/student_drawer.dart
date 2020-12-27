import 'package:flutter/material.dart';
import 'package:convegno/student_page.dart';
import 'package:convegno/Drawer/profile.dart';
import 'package:convegno/Drawer/about_apps.dart';
import 'package:convegno/login_page.dart';

class StudentDrawer extends StatefulWidget {
  @override
  _StudentDrawerState createState() => _StudentDrawerState();
}

class _StudentDrawerState extends State<StudentDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10.0,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.person_pin_outlined, size: 30.0),
            title: Text("Profile"),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Profile()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, size: 30.0),
            title: Text("About Apps"),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => AboutApps()));
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app, size: 30.0),
            title: Text("Sign Out"),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      ),
    );
  }
}
