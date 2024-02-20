// ignore_for_file: unused_import

import 'dart:io';
import 'dart:convert';

void main() async {
  final file = File(
      'lib/datasets/Facebook spam Dataset.csv'); // Adjust the path as needed
  final contents = await file.readAsString();
  // ignore: avoid_print
  print(contents); // Print the data to check if it's loaded correctly
}

Future<List<Map<String, dynamic>>> readAndParseFacebookSpamCSV(
    String filePath) async {
  final File file = File(filePath);

  try {
    final contents = await file.readAsString();
    final List<Map<String, dynamic>> data =
        CsvToListConverter().convert(contents);

    return data;
  } catch (e) {
    // ignore: avoid_print
    print('Error reading/parsing CSV file: $e');
    return [];
  }
}

// ignore: non_constant_identifier_names
CsvToListConverter() {}
