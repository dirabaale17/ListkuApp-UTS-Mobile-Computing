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
```text
lib/
├── models/
│   └── task_model.dart            # Struktur data dan parser JSON dari REST API
├── controllers/
│   └── task_controller.dart       # Pengatur logika bisnis & State Management Provider
├── services/
│   ├── storage_service.dart       # Enkapsulasi fitur Shared Preferences (Local Storage)
│   └── notification_service.dart  # Enkapsulasi fitur Local Notification (Native Feature)
└── views/
    ├── main.dart                  # Pintu masuk utama & inisialisasi sistem
    ├── login_page.dart            # Antarmuka Halaman Login
    ├── home_page.dart             # Antarmuka Menu Utama (Daftar Tugas)
    └── task_page.dart             # Antarmuka Fitur Utama (Tambah List)
