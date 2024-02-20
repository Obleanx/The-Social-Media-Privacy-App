// ignore: file_names
// ignore_for_file: unused_import
import 'package:eugenes_app/bargraph.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Table(),
  ));
}

class Tables extends StatefulWidget {
  const Tables({Key key}) : super(key: key);

  @override
  State<Tables> createState() => _TablesState();
}

class _TablesState extends State<Tables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Data Analytics',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(1),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              DataTable(
                columns: const [
                  DataColumn(
                    label: Text(
                      'Profile ID',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueAccent),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Friends',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueAccent),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Following',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueAccent),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Community',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueAccent),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Post Shared',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueAccent),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Unsheared Post',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueAccent),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Photos',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueAccent),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Average Comments',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueAccent),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Like/post',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueAccent),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Tags Posts',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueAccent),
                    ),
                  ),
                ],
                rows: const [
                  DataRow(
                    cells: [
                      DataCell(Text('1')),
                      DataCell(Text('39')),
                      DataCell(Text('300')),
                      DataCell(Text('907')),
                      DataCell(Text('1000')),
                      DataCell(Text('850')),
                      DataCell(Text('922')),
                      DataCell(Text('0.56')),
                      DataCell(Text('0.47')),
                      DataCell(Text('40')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('2')),
                      DataCell(Text('150')),
                      DataCell(Text('350')),
                      DataCell(Text('30')),
                      DataCell(Text('300')),
                      DataCell(Text('100')),
                      DataCell(Text('290')),
                      DataCell(Text('0.5')),
                      DataCell(Text('1.2')),
                      DataCell(Text('10')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('3')),
                      DataCell(Text('300')),
                      DataCell(Text('450')),
                      DataCell(Text('50')),
                      DataCell(Text('500')),
                      DataCell(Text('150')),
                      DataCell(Text('450')),
                      DataCell(Text('0.4')),
                      DataCell(Text('1.5')),
                      DataCell(Text('15')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('4')),
                      DataCell(Text('25')),
                      DataCell(Text('110')),
                      DataCell(Text('300')),
                      DataCell(Text('660')),
                      DataCell(Text('2000')),
                      DataCell(Text('2050')),
                      DataCell(Text('0.7')),
                      DataCell(Text('0.3')),
                      DataCell(Text('55')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('5')),
                      DataCell(Text('24')),
                      DataCell(Text('100')),
                      DataCell(Text('150')),
                      DataCell(Text('950')),
                      DataCell(Text('1000')),
                      DataCell(Text('900')),
                      DataCell(Text('0.66')),
                      DataCell(Text('0.5')),
                      DataCell(Text('15')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('6')),
                      DataCell(Text('562')),
                      DataCell(Text('350')),
                      DataCell(Text('55')),
                      DataCell(Text('450')),
                      DataCell(Text('250')),
                      DataCell(Text('900')),
                      DataCell(Text('0.42')),
                      DataCell(Text('2.2')),
                      DataCell(Text('23')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('7')),
                      DataCell(Text('662')),
                      DataCell(Text('545')),
                      DataCell(Text('22')),
                      DataCell(Text('365')),
                      DataCell(Text('2000')),
                      DataCell(Text('2400')),
                      DataCell(Text('0.77')),
                      DataCell(Text('0.32')),
                      DataCell(Text('23')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('8')),
                      DataCell(Text('50')),
                      DataCell(Text('100')),
                      DataCell(Text('700')),
                      DataCell(Text('2512')),
                      DataCell(Text('500')),
                      DataCell(Text('300')),
                      DataCell(Text('0.4')),
                      DataCell(Text('2')),
                      DataCell(Text('13')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('9')),
                      DataCell(Text('800')),
                      DataCell(Text('550')),
                      DataCell(Text('66')),
                      DataCell(Text('400')),
                      DataCell(Text('100')),
                      DataCell(Text('650')),
                      DataCell(Text('0.24')),
                      DataCell(Text('2.8')),
                      DataCell(Text('16')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('10')),
                      DataCell(Text('605')),
                      DataCell(Text('555')),
                      DataCell(Text('58')),
                      DataCell(Text('700')),
                      DataCell(Text('132')),
                      DataCell(Text('530')),
                      DataCell(Text('0.1')),
                      DataCell(Text('1.6')),
                      DataCell(Text('35')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('11')),
                      DataCell(Text('1005')),
                      DataCell(Text('380')),
                      DataCell(Text('13')),
                      DataCell(Text('561')),
                      DataCell(Text('l32')),
                      DataCell(Text('465')),
                      DataCell(Text('0.1')),
                      DataCell(Text('1.6')),
                      DataCell(Text('35')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('12')),
                      DataCell(Text('1632')),
                      DataCell(Text('360')),
                      DataCell(Text('84')),
                      DataCell(Text('789')),
                      DataCell(Text('87')),
                      DataCell(Text('760')),
                      DataCell(Text(' 0.46')),
                      DataCell(Text('1.9')),
                      DataCell(Text('13')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('13')),
                      DataCell(Text('2461')),
                      DataCell(Text('643')),
                      DataCell(Text('63')),
                      DataCell(Text('756')),
                      DataCell(Text('87')),
                      DataCell(Text('760')),
                      DataCell(Text('0.46')),
                      DataCell(Text('1.9')),
                      DataCell(Text('13')),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
