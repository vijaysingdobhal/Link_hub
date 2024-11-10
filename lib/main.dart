import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'screens/add_edit_link_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const LinkHubApp());
}

class LinkHubApp extends StatelessWidget {
  const LinkHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Link-hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/add_edit_link': (context) => const AddEditLinkScreen(), // Updated route for adding/editing links
        '/settings': (context) => SettingsScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
      },
      // Optional: Define onUnknownRoute to handle unknown routes
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const SplashScreen()); // Fallback for unknown routes
      },
    );
  }
}
