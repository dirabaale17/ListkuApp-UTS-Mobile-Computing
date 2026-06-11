import 'package:flutter/material.dart';
import 'login_page.dart'; // Memanggil file login

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}