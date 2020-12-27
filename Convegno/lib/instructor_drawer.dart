import 'package:flutter/material.dart';
import 'package:convegno/Drawer/profile.dart';
import 'package:convegno/Drawer/about_apps.dart';
import 'package:convegno/login_page.dart';

class InstructorDrawer extends StatefulWidget {
  @override
  _InstructorDrawerState createState() => _InstructorDrawerState();
}

class _InstructorDrawerState extends State<InstructorDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.person_pin_outlined),
          title: Text("Profile"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Profile()));
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("About Apps"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => AboutApps()));
          },
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text("Sign Out"),
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => LoginPage()));
          },
        ),
      ],
    ));
  }
}
