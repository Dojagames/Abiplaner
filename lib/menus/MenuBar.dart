import 'package:abiplaner/data/Themes.dart';
import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: MyThemes.ThemeMain.backgroundColor,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('DBS'),
            accountEmail: Text('dbs@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: MyThemes.ThemeMain.backgroundColor,
              child: ClipOval(

              ),
            ),
            decoration: BoxDecoration(
              color: MyThemes.ThemeMain.bottomAppBarColor,

            ),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}