import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lexend',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Lexend',
            fontWeight: FontWeight.w900,
          ),
          displayMedium: TextStyle(
            fontFamily: 'Lexend',
            fontWeight: FontWeight.w700,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Lexend',
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Lexend',
          ),
          titleLarge: TextStyle(
            fontFamily: 'Lexend',
            fontWeight: FontWeight.w600,
          ),
          labelLarge: TextStyle(
            fontFamily: 'Lexend',
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}