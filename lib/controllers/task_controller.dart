import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/task_model.dart';
import '../services/notification_service.dart';

class TaskController with ChangeNotifier {
  List<TaskModel> _apiTasks = [];
  bool _isLoading = false;

  List<TaskModel> get apiTasks => _apiTasks;
  bool get isLoading => _isLoading;

  // fungsi: ambil data dari REST API Publik 
  Future<void> fetchTasksFromAPI() async {
    _isLoading = true;
    notifyListeners(); // kasih tau UI kalau data sedang loading

    final url = Uri.parse('https://jsonplaceholder.typicode.com/todos?_limit=5');
    
    try {
      final response = await http.get(url);
      
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.statusCode == 200 ? response.body : '[]');
        _apiTasks = data.map((json) => TaskModel.fromJson(json)).toList();
      }
    } catch (e) {
      debugPrint("Error fetching API: $e");
    } finally {
      _isLoading = false;
      notifyListeners(); // kasih tahu UI untuk render ulang setelah data masuk
    }
  }

  // fungsi: memunculkan Notifikasi Lokal 
  void addNewTaskReminder(String title) {
    // munculin notifikasi di HP real-time pas klik tombol tambah list
    NotificationService.showNotification(
      title: 'Tugas Listku Berhasil Dibuat!',
      body: 'Jangan lupa kerjakan aktivitas: $title',
    );
  }
}