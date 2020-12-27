import 'package:flutter/material.dart';
import 'dart:ui' as ui;
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Convegno',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new HomePageInstructor(title: ''),
    );
  }
}

class HomePageInstructor extends StatefulWidget {
  HomePageInstructor({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageInstructor createState() => new _HomePageInstructor();
}

class _HomePageInstructor extends State<HomePageInstructor> {

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    final String imgUrl = 'http://ilmate.kemenperin.go.id/img/user/default.png';

    return new Stack(children: <Widget>[
      new Container(color: Colors.white,),
      new Image.network(imgUrl, fit: BoxFit.fill,),
      new BackdropFilter(
      filter: new ui.ImageFilter.blur(
      sigmaX: 6.0,
      sigmaY: 6.0,
      ),
      child: new Container(
      decoration: BoxDecoration(
      color:  Colors.white.withOpacity(0.9),
      ),)),
      new Scaffold(
          appBar: new AppBar(
            title: new Text(widget.title),
            centerTitle: false,
            elevation: 0.0,
            backgroundColor: Colors.blue,
          ),
          drawer: new Drawer(child: new Container(),),
          backgroundColor: Colors.white,
          body: new Center(
            child: new Column(
              children: <Widget>[
                new SizedBox(height: _height/12,),
                new CircleAvatar(radius:_width<_height? _width/4:_height/4,backgroundImage: NetworkImage(imgUrl),),
                new SizedBox(height: _height/25.0,),
                
                new Text('Namiya Assegaf',   style:  new TextStyle(fontWeight: FontWeight.bold, fontSize: _width/16, color: Colors.blueGrey),),
                new Text('namiyaassegaf@gmail.com', style: new TextStyle(fontWeight: FontWeight.normal, fontSize: _width/22, color: Colors.blueGrey),),                
                new Divider(height: _height/30,color: Colors.white),

                RaisedButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
                  color: Colors.blue[700],
                  shape: StadiumBorder(),
                  child: Text(
                    "Create New Meeting",
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight:FontWeight.bold),
                  ),
                ),

                new Divider(height: _height/30,color: Colors.white),
                new Text('No Meeting Today', style: new TextStyle(fontWeight: FontWeight.normal, fontSize: _width/24, color: Colors.blueGrey),),

               ],
             
            ),
          )
      )
    ],);
  }
}