import 'package:flutter/material.dart';
import 'package:gameflutter/home/page/ranking_screen.dart';
import 'home/page/curso_screen.dart';
import 'home/page/home.dart';
import 'home/page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RankingScreen(),
    );
  }
}