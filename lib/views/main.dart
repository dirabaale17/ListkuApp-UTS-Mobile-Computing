import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // bawa library State Management
import '../controllers/task_controller.dart';
import '../services/notification_service.dart';
import 'login_page.dart'; // panggil file login

void main() async {
  // pasyiin sistem plugin Flutter siap sebelum aplikasi jalan
  WidgetsFlutterBinding.ensureInitialized();
  
  // inisialisai Fitur Notifikasi Lokal pas aplikasi dibuka pertama kali
  await NotificationService.initNotification();

  runApp(
    // daftarin State Management Provider secara Global 
    ChangeNotifierProvider(
      create: (context) => TaskController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      theme: ThemeData.dark(),
    );
  }
}