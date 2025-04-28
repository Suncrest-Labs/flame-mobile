import 'package:flutter/material.dart';
import 'package:flame/screens/notifications_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flame',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8A70D6),
          primary: const Color(0xFF8A70D6),
        ),
        useMaterial3: true,
      ),
      home: const NotificationsScreen(),
    );
  }
}
