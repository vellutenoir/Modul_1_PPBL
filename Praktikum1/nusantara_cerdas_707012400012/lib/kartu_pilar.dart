import 'package:flutter/material.dart';

class KartuPilar extends StatelessWidget {
  const KartuPilar({
    super.key,
    required this.nama,
    required this.ikon,
    required this.deskripsi,
    required this.warna,
  });

  final String nama;
  final IconData ikon;
  final String deskripsi;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: warna.withOpacity(0.14),
              child: Icon(ikon, color: warna),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(nama, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 6),
                  Text(deskripsi),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
