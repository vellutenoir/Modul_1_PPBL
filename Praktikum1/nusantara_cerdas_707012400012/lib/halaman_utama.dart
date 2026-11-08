import 'package:flutter/material.dart';
import 'kepala_kota.dart';
import 'kartu_pilar.dart';
import 'panel_laporan.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  static const List<_DataPilar> _pilar = [
    _DataPilar('Smart Governance', Icons.account_balance, 'Layanan pemerintahan digital yang transparan, cepat, dan mudah diakses.', Color(0xFF2563A6)),
    _DataPilar('Smart Economy', Icons.trending_up, 'Dukungan ekonomi digital, UMKM, dan peluang usaha masyarakat.', Color(0xFF16866A)),
    _DataPilar('Smart Living', Icons.health_and_safety, 'Peningkatan kualitas kesehatan, pendidikan, keamanan, dan kenyamanan warga.', Color(0xFF8B5CF6)),
    _DataPilar('Smart Mobility', Icons.directions_bus, 'Informasi transportasi dan mobilitas kota yang terintegrasi.', Color(0xFFDB8A21)),
    _DataPilar('Smart Environment', Icons.eco, 'Pengelolaan lingkungan, energi, dan kebersihan kota secara berkelanjutan.', Color(0xFF32945B)),
    _DataPilar('Smart People', Icons.groups, 'Pengembangan masyarakat yang kreatif, terampil, inklusif, dan melek teknologi.', Color(0xFFBC5B78)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nusantara Cerdas'),
        centerTitle: true,
        backgroundColor: const Color(0xFF123B55),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const KepalaKota(),
            const SizedBox(height: 22),
            const Text('Enam Pilar Smart City',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            for (final pilar in _pilar)
              KartuPilar(
                nama: pilar.nama,
                ikon: pilar.ikon,
                deskripsi: pilar.deskripsi,
                warna: pilar.warna,
              ),
            const SizedBox(height: 14),
            const PanelLaporanWarga(),
            const SizedBox(height: 16),
            const Text('Nusantara Cerdas • Informasi layanan publik',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black54, fontSize: 12)),
          ],
        ),
      ),
    );
  }
}

class _DataPilar {
  const _DataPilar(this.nama, this.ikon, this.deskripsi, this.warna);
  final String nama;
  final IconData ikon;
  final String deskripsi;
  final Color warna;
}
