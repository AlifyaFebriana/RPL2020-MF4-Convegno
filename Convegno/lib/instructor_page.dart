import 'package:flutter/material.dart';
import 'package:convegno/home_instructor.dart';
import 'package:convegno/instructor_drawer.dart';

class InstructorPage extends StatefulWidget {
  @override
  _InstructorPageState createState() => _InstructorPageState();
}

class _InstructorPageState extends State<InstructorPage> {
  @override
  Widget build(BuildContext context) {
    void showAlertDialog(BuildContext context) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              content: Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: MediaQuery.of(context).size.height / 4.5,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Text("New Meeting"),
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        labelText: "Meeting ID",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Material(
                        elevation: 4.0,
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.blue[900],
                        child: MaterialButton(
                          padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                          child: Text(
                            "Create Meeting",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => HomeInstructor()));
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          });
    }

    final joinButton = Container(
      height: 42.0,
      child: RaisedButton(
        color: Colors.blue[900],
        onPressed: () {
          showAlertDialog(context);
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        padding: EdgeInsets.all(0.0),
        child: Container(
          constraints: BoxConstraints(maxWidth: 250.0, minHeight: 42.0),
          alignment: Alignment.center,
          child: Text("Join Meeting", style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Instructor Page'),
      ),
      drawer: InstructorDrawer(),
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Join Meeting Now", style: TextStyle(fontSize: 20)),
                Form(
                  child: Column(
                    children: [
                      SizedBox(height: 45.0),
                      joinButton,
                      SizedBox(height: 15.0),
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
