import 'package:flutter/material.dart';
import 'package:left_drawer/drawer/leftdrawer.dart';
import 'bussinessdetailpage.dart';

class BusinessPage extends StatefulWidget {
  final String pageTitle;
  const BusinessPage({Key key, this.pageTitle}) : super(key: key);

  @override
  _BussinessPageState createState() => _BussinessPageState();
}

class _BussinessPageState extends State<BusinessPage> {
  String pageTitle;
  _BussinessPageState({this.pageTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: LeftDrawer(context: context).setupDrawer(),
      appBar: AppBar(
        title: Text(widget.pageTitle),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(widget.pageTitle,
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              RaisedButton(
                child: Text('Go On Detail Page'),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => BussinessDetails()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
