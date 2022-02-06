import 'package:abiplaner/data/Themes.dart';
import 'package:abiplaner/data/vars.dart';
import 'package:abiplaner/tabs/home/menus/AppearancePage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'ProfilePage.dart';
import 'SettingsPage.dart';

/*
This class represents the menu bar on the left side of the home tab.
It gives the user an overview of different actions and settings he can use.
TODO: - add functionality to feedback and logout options
      - create content for profile and settings page
      - improve theme page
 */

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: MyThemes.ThemeMain.backgroundColor,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('DBS'),
            accountEmail: const Text('dbs@gmail.com'),
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
            leading: const Icon(Icons.verified_user),
            title: const Text('Profile'),
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
            title: const Text('Appearance'),
            onTap: () {
              Fluttertoast.showToast(msg: "Opening appearance settings");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AppearancePage(initialThemeIndex: selectedTheme)),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Fluttertoast.showToast(msg: "Opening settings");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Feedback'),
            onTap: () {
              Fluttertoast.showToast(msg: "Opening feedback page");
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () {
              Fluttertoast.showToast(msg: "Logging out");
            },
          ),
        ],
      ),
    );
  }
}