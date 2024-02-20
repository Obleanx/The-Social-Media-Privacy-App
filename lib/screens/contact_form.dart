import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ContactFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
        backgroundColor: Colors.black,
        elevation: 10,
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.70, // 75% screen width
          height: MediaQuery.of(context).size.height * 0.45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color:
                Colors.white.withOpacity(0.2), // Glass neomorphism background
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Handle email button click
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  backgroundColor: const Color(0xFF4AC8EA),
                  shape: const CircleBorder(),
                ),
                child: const Icon(
                  Icons.email,
                  size: 36.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'iyukhun.pg2116043@st.futminna.edu.ng',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Handle phone button click
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  backgroundColor: const Color(0xFF2D6A8E),
                  // Gradient colors

                  shape: const CircleBorder(),
                ),
                child: const Icon(
                  Icons.phone,
                  size: 36.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                '08066303713',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
