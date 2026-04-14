import 'package:flutter/material.dart';

import '../component/bottom-nav-bar.dart';
import 'home.dart';

class CursoScreen extends StatelessWidget {
  const CursoScreen({super.key});

  void _handleBack(BuildContext context) {
    final navigator = Navigator.of(context);

    if (navigator.canPop()) {
      navigator.pop();
      return;
    }

    navigator.pushReplacement(
      MaterialPageRoute(builder: (_) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const Color darkText = Color(0xFF28283C);
    const Color lightText = Color(0xFF88889D);
    const Color primaryPurple = Color(0xFF6B4DFA);
    const Color progressBackground = Color(0xFFEBEBFA);
    const Color moduleBackground = Color(0xFFF2F3F7);
    const Color itemGreenBackground = Color(0xFFE5F5EC);
    const Color itemGreenColor = Color(0xFF1EA062);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: darkText),
          onPressed: () => _handleBack(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text(
              'Flutter B\u00e1sico',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: darkText,
              ),
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '12/20 atividades',
                  style: TextStyle(
                    fontSize: 14,
                    color: lightText,
                  ),
                ),
                Text(
                  '60%',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: darkText,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const LinearProgressIndicator(
                value: 0.6,
                minHeight: 8,
                backgroundColor: progressBackground,
                valueColor: AlwaysStoppedAnimation<Color>(primaryPurple),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: moduleBackground,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'M\u00f3dulo 1 - Fundamentos',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: darkText,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_up,
                    color: darkText,
                    size: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: itemGreenBackground,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                children: [
                  Text(
                    'A',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: itemGreenColor,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1. O que \u00e9 Flutter?',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: darkText,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Conclu\u00edda',
                          style: TextStyle(
                            fontSize: 12,
                            color: itemGreenColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.check_circle,
                    color: itemGreenColor,
                    size: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: itemGreenBackground,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                children: [
                  Text(
                    'A',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: itemGreenColor,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1. O que \u00e9 Flutter?',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: darkText,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Conclu\u00edda',
                          style: TextStyle(
                            fontSize: 12,
                            color: itemGreenColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.check_circle,
                    color: itemGreenColor,
                    size: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 1),
    );
  }
}
