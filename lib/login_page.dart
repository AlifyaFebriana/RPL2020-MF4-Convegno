import 'package:convegno/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  static const String title = "login_page";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override

  Widget build(BuildContext context) {
  
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        hintText: 'Email',
        hintStyle: TextStyle(fontSize: 15),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        hintText: 'Password',
        hintStyle: TextStyle(fontSize: 15),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Container(
      height: 42.0,
      child: RaisedButton(
        color: Colors.blue[900],
        onPressed: () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        padding: EdgeInsets.all(0.0),
        child: Container(
          constraints: BoxConstraints(maxWidth: 250.0, minHeight: 42.0),
          alignment: Alignment.center,
          child: Text("SIGN IN", style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final regisButton = Container(
      height: 42.0,
      child: RaisedButton(
        color: Colors.blue[900],
        onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => RegisterPage()));
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        padding: EdgeInsets.all(0.0),
        child: Container(
          constraints: BoxConstraints(maxWidth: 250.0, minHeight: 42.0),
          alignment: Alignment.center,
          child: Text("SIGN UP", style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("SIGN IN", style: TextStyle(fontSize: 25)),
                Form(
                  child: Column(
                    children: [
                      SizedBox(height: 45.0),
                      email,
                      SizedBox(height: 15.0),
                      password,
                      SizedBox(height: 25.0),
                      loginButton,
                      SizedBox(height: 15.0),
                      regisButton
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
