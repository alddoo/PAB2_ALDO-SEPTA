import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mdp_gold/screens/prices_list_screens.dart';
import 'firebase_options.dart';
import 'package:mdp_gold/screens/prices_list_screens.dart';

void main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PriceListScreen());
  }
}
