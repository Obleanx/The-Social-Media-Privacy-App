import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:table_calendar/table_calendar.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:csv/csv.dart';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'dart:async';

Future<List<List<dynamic>>> readAndParseCSV(String filePath) async {
  final input = File(filePath).openRead();
  final fields = await input
      .transform(utf8.decoder)
      .transform(const CsvToListConverter())
      .toList();
  return fields;
}

void main() {
  runApp(const DataVisuals());
}

class DataVisuals extends StatefulWidget {
  const DataVisuals({Key key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DataVisualsState createState() => _DataVisualsState();
}

class _DataVisualsState extends State<DataVisuals> {
  final DateTime _selectedDate = DateTime.now();
  List<List<dynamic>> dataset;
  List<int> spamData = [70, 30]; // Example data for spam posts
  List<int> nonSpamData = [60, 40]; // Example data for non-spam posts

  final _dataUpdateStream = StreamController<DateTime>.broadcast();

  @override
  void initState() {
    super.initState();
    _loadDataset();
  }

  Future<void> _loadDataset() async {
    final assetData =
        await rootBundle.loadString('assets/Facebook_Spam_Dataset.csv');
    dataset = const CsvToListConverter().convert(assetData);
  }

  @override
  void dispose() {
    _dataUpdateStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Data Visualizations'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Calendar
              const Text(
                'Calendar',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TableCalendar(
                calendarFormat: CalendarFormat.month,
                headerStyle: const HeaderStyle(formatButtonVisible: false),
                startingDayOfWeek: StartingDayOfWeek.sunday,
                calendarBuilders: CalendarBuilders(
                  selectedBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      date.day.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                focusedDay: _selectedDate,
                firstDay: DateTime(2023, 1, 1),
                lastDay: DateTime(2023, 12, 31),
              ),
              // Bar Charts 
              const Text(
                'Bar Charts - Spam vs. Non-Spam Posts',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              for (var i = 1; i <= 7; i++)
                StreamBuilder<DateTime>(
                  stream: _dataUpdateStream.stream,
                  initialData: _selectedDate,
                  builder: (context, snapshot) {
                    final date = snapshot.data;
                    return SizedBox(
                      height: 300,
                      child: BarChart(
                        BarChartData(
                          alignment: BarChartAlignment.spaceAround,
                          maxY:
                              100.0,
                          groupsSpace: 20.0,
                          titlesData: FlTitlesData(show: false),
                          borderData: FlBorderData(show: false),
                          barGroups: [
                            BarChartGroupData(
                              x: 0,
                              barRods: [
                                BarChartRodData(
                                  toY: _calculateSpamData(date, i),
                                ),
                              ],
                            ),
                            BarChartGroupData(
                              x: 1,
                              barRods: [
                                BarChartRodData(
                                  toY: _calculateNonSpamData(date, i),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }

  double _calculateSpamData(DateTime date, int chartIndex) {
   
    return 0.0;
  }

  double _calculateNonSpamData(DateTime date, int chartIndex) {
    
    return 0.0;
  }
}
