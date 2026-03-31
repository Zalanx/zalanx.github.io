import 'package:flutter/material.dart';

import 'package:zalan_portfolio/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zalan´s Portfolio',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

