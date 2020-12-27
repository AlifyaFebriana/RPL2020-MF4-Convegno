import 'package:flutter/material.dart';
import 'package:convegno/student_drawer.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: StudentDrawer(),
      appBar: AppBar(
        title: Text("Profile"),
      ),
    );
  }
}
