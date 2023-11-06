import 'package:flutter/material.dart';
import 'package:wallpulse/views/screens/category.dart';
import 'package:wallpulse/views/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WallPulse',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 12, 6, 22)),
        useMaterial3: true,
      ),
      home: Homescreen(),
    );
  }
}
