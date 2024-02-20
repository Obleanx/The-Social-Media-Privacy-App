// ignore_for_file: avoid_print, unused_local_variable

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserDataScreen extends StatelessWidget {
  final String userId; // The user's unique ID

  // ignore: use_key_in_widget_constructors
  const UserDataScreen(this.userId);

  Future<void> fetchDataWithRetry() async {
    int maxRetryAttempts = 30;
    int retryAttempt = 0;
    Duration initialRetryDelay = const Duration(seconds: 2);

    while (retryAttempt < maxRetryAttempts) {
      try {
        // Attempt to fetch user data from Firestore
        final userDataSnapshot = await FirebaseFirestore.instance
            .collection('users')
            .doc(userId)
            .get();

        if (userDataSnapshot.exists) {
          // User data exists, process it here
          final userData = userDataSnapshot.data();
          // Extract and display user-specific data
          final username = userData['username'];
          final email = userData['email'];

          // You can update the UI or set state here with the fetched data

          break; // Break out of the loop since data was successfully retrieved
        } else {
          // Handle case where user data doesn't exist
          print('User data not found.');
          break;
        }
      } catch (error) {
        print('Error: $error');
        // Wait before the next retry, increasing delay each time
        await Future.delayed(initialRetryDelay * (retryAttempt + 1));
        retryAttempt++;
      }
    }

    if (retryAttempt == maxRetryAttempts) {
      // Handle the case where max retries are reached, e.g., show an error message
      print('Max retries reached. Could not fetch user data from Firestore.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Data'),
      ),
      body: FutureBuilder<DocumentSnapshot>(
        future:
            FirebaseFirestore.instance.collection('users').doc(userId).get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // While data is loading, display a loading indicator
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // If there's an error, display an error message
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || !snapshot.data.exists) {
            // If no data exists for the user, display a message
            return const Center(child: Text('User data not found.'));
          } else {
            // User data exists, display it here
            final userData = snapshot.data?.data() as Map<String, dynamic>;

            // Extract and display user-specific data
            final username = userData['username'];
            final email = userData['email'];

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username: $username',
                    style: const TextStyle(fontSize: 18.0),
                  ),
                  Text(
                    'Email: $email',
                    style: const TextStyle(fontSize: 18.0),
                  ),
                  // Add more widgets to display other user-specific data
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
