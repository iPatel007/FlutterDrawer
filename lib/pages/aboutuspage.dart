import 'package:flutter/material.dart';
import 'package:left_drawer/drawer/leftdrawer.dart';

class AboutusPage extends StatefulWidget {
  final String pageTitle;
  const AboutusPage({Key key, this.pageTitle}) : super(key: key);

  @override
  _AboutusPageState createState() => _AboutusPageState();
}

class _AboutusPageState extends State<AboutusPage> {
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