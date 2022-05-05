import 'package:f_groceries/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
         
          primaryColor: Colors.white,
          primaryColorDark: Colors.white30,
          accentColor: Colors.blue),
      home: MyHomePage(title: 'Groceries'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

 

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  startTime() async {
    var _duration = Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Home_screen()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.white),
      child: Container(
        color: Colors.black12,
        margin: EdgeInsets.all(30.0),
        width: 250.0,
        height: 250.0,
        child: Image.asset(
          'images/gro.jpg',
        ),
      ),
    );
  }
}
