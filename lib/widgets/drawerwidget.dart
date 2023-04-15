import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              accountEmail: Text(
                'Shaquib@gmail.com',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              accountName: Text(
                'Shaquib nawaz',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/avatar.jpg'),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              size: 20,
              color: Colors.red,
            ),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.person,
              size: 20,
              color: Colors.red,
            ),
            title: Text(
              'My Account',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.cart,
              size: 20,
              color: Colors.red,
            ),
            title: Text(
              'My Orders',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.heart_fill,
              size: 20,
              color: Colors.red,
            ),
            title: Text(
              'My Favorite',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.settings,
              size: 20,
              color: Colors.red,
            ),
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.lock,
              size: 20,
              color: Colors.red,
            ),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
