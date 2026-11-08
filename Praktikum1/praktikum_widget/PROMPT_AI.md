# Prompt Praktikum Berbantuan AI

1. **Prompt konteks awal:** Kamu berperan sebagai asisten pemrograman Flutter untuk mahasiswa pemula. Saya mengerjakan proyek `praktikum_widget_ai` untuk materi StatelessWidget, StatefulWidget, layout, dan styling. Bantu membangun halaman kartu profil, penghitung suka, dan dua kotak informasi. Gunakan hanya `package:flutter/material.dart`, tanpa paket tambahan dan tanpa state management eksternal. Berikan rencana dan daftar berkas terlebih dahulu; jangan tulis kode sebelum diminta.
2. **Stateless:** Buat `lib/profil_card.dart` berisi satu `StatelessWidget` bernama `ProfilCard`, parameter wajib `nama`, `nim`, `prodi` bertipe String, const constructor, Container padding 16, sudut 12, putih dan bayangan tipis; Row dengan CircleAvatar dan kolom identitas. Jelaskan fungsi widget.
3. **Stateful:** Buat `lib/penghitung_suka.dart` berisi `StatefulWidget` `PenghitungSuka`, state `_jumlahSuka` (int) dan `_disukai` (bool), tombol Suka dan Reset. Semua perubahan harus melalui `setState()`. Jelaskan dampak perubahan tanpa setState.
4. **Layout:** Buat `lib/halaman_utama.dart` berisi `HalamanUtama`, Scaffold, AppBar, SingleChildScrollView, Column, ProfilCard, PenghitungSuka, dan dua KotakInfo di dalam Row/Expanded. Jelaskan widget layout.
5. **Integrasi:** Tulis `main.dart` dengan `main()`, `runApp()`, `MaterialApp`, tema indigo, dan `home: HalamanUtama`. Jelaskan fungsi ketiganya.
6. **Debug:** Tempelkan pesan galat aktual dan minta arti galat, file/baris penyebab, perbaikan minimal, dan alasan perbaikan. Jangan meminta penulisan ulang semua file.
7. **Pemahaman:** Jelaskan kode yang belum dipahami baris demi baris tanpa mengubah kode, lalu berikan satu pertanyaan untuk menguji pemahaman.
