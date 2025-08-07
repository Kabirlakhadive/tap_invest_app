import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart'; // Import google_fonts
import 'package:tap_invest_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tap Invest',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          background: Colors.grey[100], // A light grey background
        ),
        scaffoldBackgroundColor: const Color(0xffF8F8F8),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
