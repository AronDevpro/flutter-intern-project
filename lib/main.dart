import 'package:flutter/material.dart';
import 'package:flutter_intern_project/src/features/auth/signup_screen.dart';
import 'package:flutter_intern_project/src/features/core/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Intern Project',
        initialRoute: '/',
        routes: {
        '/': (context) => const SignupScreen(),
        '/second': (context) => const HomeScreen(),
      },
    );
  }
}

