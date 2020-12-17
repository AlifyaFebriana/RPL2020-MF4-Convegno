import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Sidebar-Navigasi",
    home: new Halabout(),
  ));
}

class Halabout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("About Convegno"),
        backgroundColor: Colors.blue[800],
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Convegno Application is a Realtime Material Review"),
            Text("Created by 4MF Group"),
          ],
        ),
      ),
      drawer: new Drawer(
          child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("Bastian Rizki"),
            accountEmail: new Text("bastian112@gmail.com"),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new NetworkImage(
                  "https://c.pxhere.com/images/0d/18/4fa31701d2cfa087836d807967f3-1447663.jpg!d"),
            ),
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new NetworkImage(
                        "https://cdn.cjr.org/wp-content/uploads/2019/07/AdobeStock_100000042-e1563305717660-686x371.jpeg"),
                    fit: BoxFit.cover)),
          ),
          new ListTile(
            title: new Text("Profile"),
            trailing: new Icon(Icons.verified_user),
          ),
          new ListTile(
              title: new Text("About Apps"),
              trailing: new Icon(Icons.settings),
              onTap: () {
                Navigator.pushNamed(context, 'Halabout');
              }),
          new ListTile(
            title: new Text("Sign Out"),
            trailing: new Icon(Icons.logout),
          ),
        ],
      )),
    );
  }
}
