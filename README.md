# 📱 Listku App - Proyek Akhir UAS Mobile Computing

Aplikasi manajemen tugas dan jadwal harian (To-Do List) berbasis Flutter yang diimplementasikan menggunakan standar arsitektur industri dan fitur perangkat native. Proyek ini memenuhi seluruh kriteria penilaian UAS Mobile Computing.

---

## 👤 Informasi Mahasiswa
* **Nama:** NADIRA DIKA KAIVALYA
* **NIM:** 24110500023
* **Kelas:** MoC02

---

## 🛠️ Spesifikasi & Fitur Lengkap Aplikasi (Kriteria UAS)

1. **Software Architecture (MVC):** Kode program dipisah secara terstruktur ke dalam komponen Model, View, dan Controller untuk kemudahan *maintenance* dan kerapian kode.
2. **State Management (Provider):** Menggunakan `ChangeNotifierProvider` secara global untuk mengatur perubahan status data aplikasi secara reaktif dan efisien.
3. **Integrasi REST API:** Mengambil data tugas eksternal secara real-time dari API Publik JSONPlaceholder (`https://jsonplaceholder.typicode.com/todos`) untuk disinkronisasikan ke dalam aplikasi.
4. **Local Storage (Shared Preferences):** Mengimplementasikan penyimpanan lokal untuk mencatat dan mempertahankan status autentikasi/login pengguna di perangkat.
5. **Mobile Native Feature (Local Notification):** Menggunakan paket `flutter_local_notifications` untuk memicu munculnya notifikasi pengingat secara langsung di bilah status HP pengguna saat tugas baru ditambahkan.

---

## 📁 Struktur Folder Proyek

* **lib/** `Pusat kode sumber utama`
  * ↳ **controllers/** — *State Management & Logika Bisnis*
    * `task_controller.dart` — Integrasi API & pemicu notifikasi
  * ↳ **models/** — *Arsitektur Data*
    * `task_model.dart` — Parser JSON mentah dari server
  * ↳ **services/** — *Fitur Perangkat Native & Lokal*
    * `notification_service.dart` — Pengelola Local Notification
    * `storage_service.dart` — Pengelola Shared Preferences (Login)
  * ↳ **views/** — *Antarmuka UI/UX (Figma Implementation)*
    * `main.dart` • `login_page.dart` • `home_page.dart` • `task_page.dart`
   
 ---

## 📸 Dokumentasi & Hasil Implementasi Aplikasi

Berikut adalah bukti visual fungsionalitas aplikasi yang dijalankan melalui simulator:

<img width="326" height="89" alt="Screenshot 2026-07-02 195635" src="https://github.com/user-attachments/assets/dc2e08a8-e01a-476a-a722-eba8d35d44f5" />

