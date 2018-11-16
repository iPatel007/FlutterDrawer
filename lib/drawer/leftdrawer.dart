import 'package:flutter/material.dart';
import 'package:left_drawer/pages/homepage.dart';
import 'package:left_drawer/pages/accountpage.dart';
import 'package:left_drawer/pages/bussinesspage.dart';
import 'package:left_drawer/pages/aboutuspage.dart';
import 'package:left_drawer/pages/settingpage.dart';

class LeftDrawer {
  BuildContext context;
  LeftDrawer({this.context});

  static double iconSize = 30;
  final List arrayOfPages = [
    HomePage(pageTitle: 'Home'),
    AccountPage(pageTitle: 'Account'),
    BusinessPage(pageTitle: 'Business'),
    AboutusPage(pageTitle: 'About Us'),
    SettingPage(pageTitle: 'Setting'),
  ];

  final List arrayOfItems = [
    {
      'title': 'Home',
      'icon': Icon(
        Icons.home,
        color: Colors.cyan,
        size: iconSize,
      )
    },
    {
      'title': 'Account',
      'icon': Icon(
        Icons.face,
        color: Colors.indigo,
        size: iconSize,
      )
    },
    {
      'title': 'Business',
      'icon': Icon(
        Icons.business,
        color: Colors.blue,
        size: iconSize,
      )
    },
    {
      'title': 'About Us',
      'icon': Icon(
        Icons.info_outline,
        color: Colors.green,
        size: iconSize,
      )
    },
    {
      'title': 'Settings',
      'icon': Icon(
        Icons.settings,
        color: Colors.black,
        size: iconSize,
      )
    },
  ];

  Widget setupDrawer() {
    return Drawer(
      child: Column(
        children: <Widget>[
          Flexible(child: _setupDrawerHeader()),
          Flexible(
            child: ListView(
              padding: EdgeInsets.only(top: 10.0),
              children: _setupListTileItems(),
            ),
          )
        ],
      ),
    );
  }

  Widget _setupDrawerHeader() {
    return GestureDetector(
      onTap: (){_clickOnDrawerHeader(); },
      child: UserAccountsDrawerHeader(
        margin: EdgeInsets.zero,
        accountEmail: Text(
          'amit.jarsaniya@gmail.com',
          style: TextStyle(fontSize: 13.0, color: Colors.white),
        ),
        accountName: Text(
          'Amit Jarsaniya',
          style: TextStyle(
              fontSize: 17.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text(
            'AJ',
            style: TextStyle(
                fontSize: 25.0,
                color: Colors.pink,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  List<Widget> _setupListTileItems() {
    List<Widget> temArr = List();
    for (var i = 0; i < arrayOfItems.length; i++) {
      ListTile temTile = ListTile(
        title: Text(arrayOfItems[i]['title']),
        leading: arrayOfItems[i]['icon'],
        onTap: () {
          _clickOnMenuItemAt(i);
        },
      );

      temArr.add(temTile);
    }
    return temArr;
  }

  _clickOnMenuItemAt(int index) {    
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => arrayOfPages[index]));
  }

  _clickOnDrawerHeader() {
    print('Click on drawer header');
  }
}
