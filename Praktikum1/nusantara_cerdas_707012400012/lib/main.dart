import 'package:flutter/material.dart';
import 'halaman_utama.dart';

void main() => runApp(const NusantaraCerdasApp());

class NusantaraCerdasApp extends StatelessWidget {
  const NusantaraCerdasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nusantara Cerdas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF167C80)),
        scaffoldBackgroundColor: const Color(0xFFF3F6F7),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF123B55),
          foregroundColor: Colors.white,
        ),
      ),
      home: const HalamanUtama(),
    );
  }
}
