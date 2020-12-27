import 'package:flutter/material.dart';
import 'package:convegno/student_drawer.dart';

class AboutApps extends StatefulWidget {
  @override
  _AboutAppsState createState() => _AboutAppsState();
}

class _AboutAppsState extends State<AboutApps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Apps'),
      ),
      drawer: StudentDrawer(),
      body: Center(
        child: Text("Conference Study Application"),
      ),
    );
  }
}
