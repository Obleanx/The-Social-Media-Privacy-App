// ignore_for_file: prefer_const_declarations

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartScreen extends StatelessWidget {
  const BarChartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.all(6.0),
      child: BarChart(BarChartData(
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
        ),
        borderData: FlBorderData(
          show: false,
        ),
        barGroups: createBarData(),
      )),
    ));
  }

  List<BarChartGroupData> createBarData() {
    final List<double> data = [
      39,
      300,
      907,
      1000,
      850,
      922,
      0.56,
      0.47,
      40,
      2,
      150,
      350,
      30,
      300,
      100,
      290,
      0.5,
      1.2,
      10,
      3,
      300,
      450,
      50,
      500,
      150,
      450,
      0.4,
      1.5,
      15,
      25,
      110,
      300,
      660,
      2000,
      2050,
      0.7,
      0.3,
      55,
      24,
      100,
      150,
      950,
      1000,
      900,
      0.66,
      0.5,
      15,
      562,
      350,
      55,
      450,
      250,
      900,
      0.42,
      2.2,
      23,
      662,
      545,
      22,
      365,
      2000,
      2400,
      0.77,
      0.32,
      23,
      50,
      100,
      700,
      2512,
      500,
      300,
      0.4,
      2,
      13,
      800,
      550,
      66,
      400,
      100,
      650,
      0.24,
      2.8,
      16,
      605,
      555,
      58,
      700,
      132,
      530,
      0.1,
      1.6,
      35,
      1005,
      380,
      13,
      561,
      132,
      465,
      0.1,
      1.6,
      35,
      1632,
      360,
      84,
      789,
      87,
      760,
      0.46,
      1.9,
      13,
      2461,
      643,
      63,
      756,
      87,
      760,
      0.46,
      1.9,
      13,
    ];

    final int numberOfBars = 12; // Assuming you have 12 months

    return List.generate(numberOfBars, (index) {
      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: data[index],
            width: 10,
            color: const Color.fromARGB(255, 255, 98, 14),
          ),
        ],
      );
    });
  }
}
