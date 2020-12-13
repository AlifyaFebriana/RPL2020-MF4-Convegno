import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'CONVEGNO';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: Participants(title: appTitle),
    );
  }
}

class Participants extends StatelessWidget {
  final String title;

  Participants({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Participant'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Namiya Assegaf'),
              leading: Icon(Icons.person_outline),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Bastian Rizki'),
              leading: Icon(Icons.person_outline),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
