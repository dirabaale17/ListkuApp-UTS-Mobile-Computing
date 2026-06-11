import 'package:flutter/material.dart';
import 'task_page.dart'; // Biar bisa pindah ke buat list

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 390, height: 844,
          decoration: const BoxDecoration(color: Color(0xff1E1E2A)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent, elevation: 0, automaticallyImplyLeading: false,
              title: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Jadwal hari ini', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                  Text('Senin, 19 Oktober 2026', style: TextStyle(color: Color(0xff6C5CE7), fontSize: 11)),
                ],
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: CircleAvatar(radius: 16, backgroundColor: Colors.grey, child: Icon(Icons.person, size: 18, color: Colors.white)),
                )
              ],
            ),
            body: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildTaskCard('Bangun', '04.30', true, const Color(0xff2255FF)),
                _buildTaskCard('Ibadah subuh', '05.00', false, const Color(0xff272838)),
                _buildTaskCard('Lari pagi', '06.00', false, const Color(0xff272838)),
                _buildTaskCard('Workout', '07.00', false, const Color(0xff272838), subtitle: '• push up 3×10\n• squat 2×10'),
                _buildTaskCard('Kerjakan tugas', '09.00', false, const Color(0xff272838), subtitle: '• Data warehouse\n• Mobile Application'),
              ],
            ),
            bottomNavigationBar: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(icon: const Icon(Icons.home, color: Color(0xff6C5CE7)), onPressed: () {}),
                  IconButton(
                    icon: const Icon(Icons.add_circle, color: Color(0xff6C5CE7), size: 48),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateTaskPage()));
                    },
                  ),
                  IconButton(icon: const Icon(Icons.settings, color: Colors.grey), onPressed: () {}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTaskCard(String title, String time, bool isDone, Color color, {String? subtitle}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12), padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Icon(isDone ? Icons.check_circle : Icons.radio_button_unchecked, color: isDone ? Colors.green : Colors.grey),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                if (subtitle != null) ...[const SizedBox(height: 4), Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 11))]
              ],
            ),
          ),
          Text(time, style: const TextStyle(color: Colors.white, fontSize: 12)),
        ],
      ),
    );
  }
}