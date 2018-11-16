import 'package:flutter/material.dart';
import 'package:left_drawer/drawer/leftdrawer.dart';

class HomePage extends StatefulWidget {
  final String pageTitle;
  const HomePage({Key key, this.pageTitle}) : super(key: key);  

  @override
  _HomePagePageState createState() => _HomePagePageState();
}

class _HomePagePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: LeftDrawer(context: context).setupDrawer(),
      appBar: AppBar(
        title: Text(widget.pageTitle),
      ),
      body: Center(
        child: Text(widget.pageTitle, style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold          
        ),
        textAlign: TextAlign.center),
      ),
    );
  }
}