import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

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
              backgroundColor: Colors.transparent, elevation: 0,
              leading: IconButton(icon: const Icon(Icons.arrow_back, color: Colors.white), onPressed: () => Navigator.pop(context)),
              title: const Text('Buat list baru', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'judul list', hintStyle: const TextStyle(color: Colors.grey),
                      filled: true, fillColor: const Color(0xff272838),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text('Tipe list', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff2255FF)), child: const Text('Tandai penting', style: TextStyle(color: Colors.white, fontSize: 12))),
                      const SizedBox(width: 10),
                      OutlinedButton(onPressed: () {}, style: OutlinedButton.styleFrom(side: const BorderSide(color: Colors.grey)), child: const Text('Terjadwal', style: TextStyle(color: Colors.white, fontSize: 12))),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text('Pilih waktu & tanggal', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.calendar_today, size: 14), label: const Text('Tanggal', style: TextStyle(color: Colors.white, fontSize: 12)), style: OutlinedButton.styleFrom(side: const BorderSide(color: Colors.grey)))),
                      const SizedBox(width: 10),
                      Expanded(child: OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.access_time, size: 14), label: const Text('Waktu', style: TextStyle(color: Colors.white, fontSize: 12)), style: OutlinedButton.styleFrom(side: const BorderSide(color: Colors.grey)))),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text('Kategori', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 8, runSpacing: 8,
                    children: [
                      _buildCategoryTag('Makan', const Color(0xffFF4A4A)),
                      _buildCategoryTag('Aktivitas', const Color(0xffFF9F29)),
                      _buildCategoryTag('Kerja', const Color(0xff6C5CE7)),
                      _buildCategoryTag('Belajar', const Color(0xff2255FF)),
                      _buildCategoryTag('Design', const Color(0xff00ADB5)),
                    ],
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff6C5CE7), minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: const Text('Buat List', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryTag(String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Text(label, style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold)),
    );
  }
}