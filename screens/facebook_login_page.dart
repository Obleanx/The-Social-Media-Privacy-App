import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: use_key_in_widget_constructors
// ... (Previous code)

// Facebook Login Page
// ignore: use_key_in_widget_constructors
class FacebookLoginPage extends StatefulWidget {
  @override
  State<FacebookLoginPage> createState() => _FacebookLoginPageState();
}

class _FacebookLoginPageState extends State<FacebookLoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          child: WebView(
            initialUrl:
                'https://www.facebook.com', // Replace with your Facebook login URL
            javascriptMode: JavascriptMode.unrestricted,
            onPageStarted: (url) {
              // Handle page started
            },
            onPageFinished: (url) {
              // Handle page finished
            },
          ),
        ),
      ),
    );
  }
}
// ... (Rest of the code)
