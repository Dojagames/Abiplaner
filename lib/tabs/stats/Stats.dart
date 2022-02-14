import 'package:abiplaner/data/Subject.dart';
import 'package:abiplaner/data/Themes.dart';
import 'package:abiplaner/data/vars.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

/*
The stats tab provides the app user with detailed information about his points in the different subjects and other data.
TODO:
    - implement listview for different charts
    - add more charts
 */

Widget StatWidget =
const Scaffold(
    body: BarChartAvgs(),

);

initData() {
  for (int i = 0; i < subjects.length; i++) {
    _marksAvgs[i] = subjects.elementAt(i).getAvg();
    _marksExams[i] = subjects.elementAt(i).getExamAvg();
    _marksTests[i] = subjects.elementAt(i).getTestAvg();
  }
}

// data to plot
final _marksAvgs = <int, double>{1: 1.8, 2: 8.4, 3: 6.9};
final _marksExams = <int, double>{1: 0.8, 2: 7.4, 3: 12.9};
final _marksTests = <int, double>{1: 6.9, 2: 4.3, 3: 0.2};
final List<Subject> subjects = getSubjects();


class BarChartAvgs extends StatefulWidget {
  const BarChartAvgs({Key? key}) : super(key: key);

  @override
  _BarChartState createState() => _BarChartState();
}

class _BarChartState extends State<BarChartAvgs> with AutomaticKeepAliveClientMixin {
  bool _showAvg = true;
  bool _showExams = false;
  bool _showTests = false;

  @override
  Widget build(BuildContext context) {
    initData();
    // convert data into BarChartGroups
    final barGroups = <BarChartGroupData>[
      for (final entry in _marksExams.entries)
        BarChartGroupData(
          x: entry.key,
          barRods: [
            if (_showAvg) BarChartRodData(y: _marksAvgs[entry.key]!.ceilToDouble(), colors: [Colors.green]),
            if (_showExams) BarChartRodData(y: entry.value, colors: [Colors.blue]),
            if (_showTests)BarChartRodData(y: _marksTests[entry.key]!.ceilToDouble(), colors: [Colors.red]),
          ],
        ),
    ];

    /// !!Step3: prepare barChartData
    final barChartData = BarChartData(
      maxY: 15,
      // the data to show
      barGroups: barGroups,
      barTouchData: BarTouchData(
        enabled: true,
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: Colors.blueGrey,
        ),
      ),
      // ! Borders:
      borderData: FlBorderData(show: true),
      // ! Grid behavior:
      gridData: FlGridData(show: true),
      // ! Axis title
      axisTitleData: FlAxisTitleData(
        show: true,
        bottomTitle: AxisTitle(titleText: 'Subjects', showTitle: true),
        leftTitle: AxisTitle(titleText: 'Points', showTitle: true),
      ),
      // ! Ticks in the axis
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true, // this is false by-default.
          // ! Decides how to show bottom titles,
          // here we convert double to month name
        ),
        leftTitles: SideTitles(
          showTitles: true,
          // ! Decides how to show left titles,
          // here we skip some values by returning ''.
          getTitles: (double val) {
            if (val.toInt() % 5 != 0) return '';
            return '${val.toInt()}';
          },
        ),
      ),
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: BarChart(barChartData),
      ),
      bottomNavigationBar: _buildControlWidgets(),
    );
  }

  Widget _buildControlWidgets() {
    return Container(
      height: 180,
      color: MyThemes.ThemeMain.backgroundColor,
      child: ListView(
        children: [
          SwitchListTile(
            title: const Text('Show average'),
            onChanged: (bool val) => setState(() => _showAvg = val),
            value: _showAvg,
          ),
          SwitchListTile(
            title: const Text('Show exams'),
            onChanged: (bool val) => setState(() => _showExams = val),
            value: _showExams,
          ),
          SwitchListTile(
            title: const Text('Show tests'),
            onChanged: (bool val) => setState(() => _showTests = val),
            value: _showTests,
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}