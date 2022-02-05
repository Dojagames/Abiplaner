import 'package:abiplaner/data/Themes.dart';
import 'package:abiplaner/menus/AppearancePage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'ProfilePage.dart';
import 'SettingsPage.dart';

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
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () {
              Fluttertoast.showToast(msg: "Opening profile");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.color_lens),
            title: Text('Appearance'),
            onTap: () {
              Fluttertoast.showToast(msg: "Opening appearance settings");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AppearancePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Fluttertoast.showToast(msg: "Opening settings");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () {
              Fluttertoast.showToast(msg: "Opening feedback page");
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              Fluttertoast.showToast(msg: "Logging out");
            },
          ),
        ],
      ),
    );
  }
}