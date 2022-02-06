import 'package:abiplaner/data/Themes.dart';
import 'package:abiplaner/data/vars.dart' as vars;
import 'package:flutter/material.dart';

class AppearancePage extends StatefulWidget {
  AppearancePage({required this.initialThemeIndex});

  final int initialThemeIndex;

  @override
  State createState() => _AppPageState();
}

class _AppPageState extends State<AppearancePage>{
  int _selectedThemeIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedThemeIndex = widget.initialThemeIndex;
  }

  setTheme(int index) {
    setState(() {
      _selectedThemeIndex = index;
    });
    vars.setTheme(Themes.values[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Appearance"),
      ),
      body: ListView(
          children: createColorRadioList()
      ),
    );
  }

  List<Widget> createColorRadioList() {
    List<Widget> widgets = [];
    for (int i = 0; i < themeList.length; i++) {
      widgets.add(
        RadioListTile(
          value: i,
          groupValue: _selectedThemeIndex,
          title: Text(
            Themes.values[i].name,
          ),
          onChanged: (selectedThemeIndex) {
            setTheme(int.tryParse(selectedThemeIndex.toString()) ?? 0);
            vars.saveTheme();
          },
          selected: i == vars.selectedTheme,
        ),
      );
    }
    return widgets;
  }
}