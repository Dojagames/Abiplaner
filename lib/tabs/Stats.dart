import 'package:flutter/widgets.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget StatWidget = Center(child: Text("Page 4"));

/// data to plot
final _data1 = <String, double>{};
final _data2 = <String, double>{};

class BarChartAvgs extends StatefulWidget {
  const BarChartAvgs({Key? key}) : super(key: key);

  @override
  _BarChartState createState() => _BarChartState();
}

class _BarChartState extends State<BarChartAvgs> {
  bool _showAvg = true;
  bool _showExams = false;
  bool _showTests = false;

  @override
  Widget build(BuildContext context) {
    /// !!Step2: convert data into barGroups.
    final barGroups = <BarChartGroupData>[
      for (final entry in _data1.entries)
        BarChartGroupData(
          x: 1,//entry.key.toInt()
          barRods: [
            BarChartRodData(y: entry.value, colors: [Colors.blue]),
            BarChartRodData(y: _data2[entry.key]!, colors: [Colors.red]),
          ],
        ),
    ];

    /// !!Step3: prepare barChartData
    final barChartData = BarChartData(
      maxY: 25,
      // ! The data to show
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
        bottomTitle: AxisTitle(titleText: 'Month', showTitle: true),
        leftTitle: AxisTitle(titleText: 'Sales', showTitle: true),
      ),
      // ! Ticks in the axis
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true, // this is false by-default.
          // ! Decides how to show bottom titles,
          // here we convert double to month names
          getTitles: (double val) =>
              DateFormat.MMM().format(DateTime(2020, val.toInt())),
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
      height: 200,
      color: Colors.grey[200],
      child: ListView(
        children: [
          SwitchListTile(
            title: const Text('Show average'),
            onChanged: (bool val) => setState(() => this._showAvg = val),
            value: this._showAvg,
          ),
          SwitchListTile(
            title: const Text('Show exams'),
            onChanged: (bool val) => setState(() => this._showExams = val),
            value: this._showExams,
          ),
          SwitchListTile(
            title: const Text('Show tests'),
            onChanged: (bool val) => setState(() => this._showTests = val),
            value: this._showTests,
          ),
        ],
      ),
    );
  }
}