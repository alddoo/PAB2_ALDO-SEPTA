import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karyawan/models/karyawan.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: myHomePage());
  }
}

class myHomePage extends StatelessWidget {
  const myHomePage();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Karyawan'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text("Data karyawan akan ditampilkan di sini"),
      ),
    );
  }
}
