import 'package:abiplaner/data/Themes.dart';
import 'package:abiplaner/data/vars.dart';
import 'package:flutter/material.dart';

class AppearancePage extends StatelessWidget {
  const AppearancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Appearance"),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: createColorRadioList()
      ),
    );
  }
}

List<Widget> createColorRadioList() {
  List<Widget> widgets = [];
  for (var theme in Themes.values) {
    widgets.add(
      RadioListTile(
        value: theme.index,
        groupValue: selectedTheme,
        title: Text(
          theme.name.toString(),
        ),
        onChanged: (selectedThemeIndex) {
          setTheme(Themes.values[int.tryParse(selectedThemeIndex!.toString()) ?? 0]);
        },
        selected: theme.index == selectedTheme,
        activeColor: themeList[theme.index].backgroundColor,
      ),
    );
  }
  return widgets;
}