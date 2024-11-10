import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import FirebaseAuth

class SettingsScreen extends StatelessWidget {
  final FirebaseAuth auth = FirebaseAuth.instance;

  SettingsScreen({super.key}); // Instance directly in the constructor

  // Logout function
  void _logout(BuildContext context) async {
    await auth.signOut();
    Navigator.pushReplacementNamed(context, '/login'); // Redirect to login page after logout
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                // Handle profile settings navigation here
              },
            ),
            ListTile(
              title: const Text('Notifications'),
              onTap: () {
                // Handle notification settings navigation here
              },
            ),
            ListTile(
              title: const Text('Privacy'),
              onTap: () {
                // Handle privacy settings navigation here
              },
            ),
            ListTile(
              title: const Text('About'),
              onTap: () {
                // Handle about navigation here
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Logout'),
              onTap: () => _logout(context), // Call logout function
              textColor: Colors.red, // Logout button text color
            ),
          ],
        ),
      ),
    );
  }
}