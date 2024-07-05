import 'package:flutter/material.dart';
import 'package:green_cycle/src/authentication/login_page.dart';
import 'package:green_cycle/src/authentication/signup_page.dart';
import 'package:firebase_core/firebase_core.dart'; // Firebase initialization
import 'package:firebase_auth/firebase_auth.dart'; // Firebase authentication

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login and Signup Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
      },
    );
  }
}
