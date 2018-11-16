import 'package:flutter/material.dart';
import 'package:left_drawer/drawer/leftdrawer.dart';

class AccountPage extends StatefulWidget {
  final String pageTitle;
  const AccountPage({Key key, this.pageTitle}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

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