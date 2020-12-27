import 'package:flutter/material.dart';
import 'package:convegno/student_page.dart';
import 'package:convegno/side_bar_student.dart';

class HomeStudent extends StatefulWidget {
  @override
  _HomeStudentState createState() => _HomeStudentState();
}

class _HomeStudentState extends State<HomeStudent> {
  @override
  Widget build(BuildContext context) {
    final understandButton = Container(
      height: 42.0,
      child: RaisedButton(
        color: Colors.lightBlue[300],
        onPressed: () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        padding: EdgeInsets.all(0.0),
        child: Container(
          constraints: BoxConstraints(maxWidth: 280.0, minHeight: 50.0),
          alignment: Alignment.center,
          child: Text("Understand",
              style: TextStyle(fontSize: 10.0, color: Colors.white)),
        ),
      ),
      /*decoration: BoxDecoration(
        Icon(
          Icons.sentiment_satisfied_outlined,
          size: 20.0,
          color: Colors.white,
        ),
      ), */
    );

    final notReallyButton = Container(
      height: 42.0,
      child: RaisedButton(
        color: Colors.blue[800],
        onPressed: () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        padding: EdgeInsets.all(0.0),
        child: Container(
          constraints: BoxConstraints(maxWidth: 280.0, minHeight: 50.0),
          alignment: Alignment.center,
          child: Text("Not Really Understand",
              style: TextStyle(fontSize: 10.0, color: Colors.white)),
        ),
      ),
      /*decoration: BoxDecoration(
        Icon(
          Icons.sentiment_neutral,
          size: 20.0,
          color: Colors.white,
        ),
      ), */
    );

    final notUnderstandButton = Container(
      height: 42.0,
      child: RaisedButton(
        color: Colors.grey[600],
        onPressed: () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        padding: EdgeInsets.all(0.0),
        child: Container(
          constraints: BoxConstraints(maxWidth: 280.0, minHeight: 50.0),
          alignment: Alignment.center,
          child: Text("Do Not Understand",
              style: TextStyle(fontSize: 10.0, color: Colors.white)),
        ),
      ),
      /* decoration: BoxDecoration(
        Icon(
          Icons.sentiment_very_dissatisfied,
          size: 20.0,
          color: Colors.white,
        ),
      ), */
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Student Home"),
      ),
      drawer: SideBarStudent(),
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Your Reactions", style: TextStyle(fontSize: 13)),
                Form(
                  child: Column(
                    children: [
                      SizedBox(height: 15.0),
                      understandButton,
                      SizedBox(height: 15.0),
                      notReallyButton,
                      SizedBox(height: 15.0),
                      notUnderstandButton
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
