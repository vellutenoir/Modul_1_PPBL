import 'package:flutter/material.dart';

class PanelLaporanWarga extends StatefulWidget {
  const PanelLaporanWarga({super.key});

  @override
  State<PanelLaporanWarga> createState() => _PanelLaporanWargaState();
}

class _PanelLaporanWargaState extends State<PanelLaporanWarga> {
  int _jumlahLaporan = 0;

  void _laporanMasuk() {
    setState(() => _jumlahLaporan++);
  }

  void _laporanSelesai() {
    setState(() {
      if (_jumlahLaporan > 0) _jumlahLaporan--;
    });
  }

  void _resetHarian() {
    setState(() => _jumlahLaporan = 0);
  }

  String get _statusPelayanan {
    if (_jumlahLaporan < 5) return 'Pelayanan Lancar';
    if (_jumlahLaporan <= 10) return 'Pelayanan Sibuk';
    return 'Perlu Penambahan Petugas';
  }

  Color get _warnaStatus {
    if (_jumlahLaporan < 5) return Colors.green;
    if (_jumlahLaporan <= 10) return Colors.orange;
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Panel Laporan Warga',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Text('$_jumlahLaporan',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 42, fontWeight: FontWeight.bold)),
            const Text('Laporan masuk hari ini', textAlign: TextAlign.center),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: _warnaStatus.withOpacity(0.12),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(_statusPelayanan,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: _warnaStatus, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: _laporanMasuk,
                  icon: const Icon(Icons.add),
                  label: const Text('Laporan Masuk'),
                ),
                OutlinedButton.icon(
                  onPressed: _jumlahLaporan > 0 ? _laporanSelesai : null,
                  icon: const Icon(Icons.check),
                  label: const Text('Laporan Selesai'),
                ),
                TextButton.icon(
                  onPressed: _resetHarian,
                  icon: const Icon(Icons.refresh),
                  label: const Text('Reset Harian'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
