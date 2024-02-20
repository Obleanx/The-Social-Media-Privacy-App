// ignore: file_names
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// Instagram Login Page
// ignore: use_key_in_widget_constructors
class TwitterLoginPage extends StatefulWidget {
  @override
  State<TwitterLoginPage> createState() => _TwitterLoginPageState();
}

class _TwitterLoginPageState extends State<TwitterLoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebView(
          initialUrl:
              'https://www.twitter.com', // Replace with your Instagram login URL
          javascriptMode: JavascriptMode.unrestricted,
          onPageStarted: (url) {
            // Handle page started
          },
          onPageFinished: (url) {
            // Handle page finished
          },
        ),
      ),
    );
  }
}
