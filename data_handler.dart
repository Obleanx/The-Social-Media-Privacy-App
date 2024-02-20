// ignore_for_file: avoid_print, unused_import
import 'package:eugenes_app/dataset.dart';
import 'data_handler.dart';

void main() async {
  // ignore: prefer_const_declarations
  final filePath =
      'lib/datasets/Facebook Spam Dataset.csv'; // Adjust the path as needed
  final List<Map<String, dynamic>> parsedData =
      await readAndParseFacebookSpamCSV(filePath);
  if (parsedData.isNotEmpty) {
    // Calculate the percentage of spam posts
    final totalPosts = parsedData.length;
    final spamPosts =
        parsedData.where((post) => post['Label'] == 'spam').toList();
    final percentageSpam = (spamPosts.length / totalPosts) * 100;

    // Calculate the average post length
    final totalLength = parsedData.fold<int>(
      0,
      (total, post) => total + (post['Post'].toString().length),
    );
    final averageLength = totalLength / totalPosts;

    print('Percentage of Spam Posts: $percentageSpam%');
    print('Average Post Length: $averageLength characters');

    // Data Analysis Tasks
    // You can add more data analysis tasks here as needed.

    // Example: Find the most common words in spam posts
    final spamTexts = spamPosts.map((post) => post['Post'].toString()).toList();
    final wordFrequency = <String, int>{};

    for (final text in spamTexts) {
      final words = text.split(RegExp(r'\s+'));
      for (final word in words) {
        if (wordFrequency.containsKey(word)) {
          wordFrequency[word];
        } else {
          wordFrequency[word] = 1;
        }
      }
    }

    // Sort word frequency in descending order
    final sortedWordFrequency = wordFrequency.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    // Print the top 10 most common words
    print('Top 10 Most Common Words in Spam Posts:');
    for (var i = 0; i < 10 && i < sortedWordFrequency.length; i++) {
      print(
          '${sortedWordFrequency[i].key}: ${sortedWordFrequency[i].value} occurrences');
    }
  } else {
    print('No data found or error occurred during parsing.');
  }
}
