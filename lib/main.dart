import 'package:flutter/material.dart';
import 'screens/login_screen.dart'; // استيراد شاشة تسجيل الدخول

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Store App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const LoginScreen(), // هنا نجعل شاشة تسجيل الدخول هي البداية
      debugShowCheckedModeBanner: false,
    );
  }
}