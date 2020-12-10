import 'package:flutter/material.dart';
import 'package:left_drawer/pages/homepage.dart';

void main() => runApp(InitialSetupPage());

class InitialSetupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(pageTitle: 'Home'),
    );
  }
}

