import 'package:flutter/material.dart';

import '../component/bottom-nav-bar.dart';

class CursoScreen extends StatelessWidget {
  const CursoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Paleta de cores baseada na imagem
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
          onPressed: () {
            // Ação de voltar
          },
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            // Título do Curso
            const Text(
              'Flutter Básico',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: darkText,
              ),
            ),
            const SizedBox(height: 8),

            // Contagem de atividades e Porcentagem
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

            // Barra de Progresso
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

            // Header do Módulo
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
                    'Módulo 1 - Fundamentos',
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

            // Único Item do Módulo (Concluído)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: itemGreenBackground,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  // Ícone do item
                  const Text(
                    'A',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: itemGreenColor,
                    ),
                  ),
                  const SizedBox(width: 16),

                  // Textos do item
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1. O que é Flutter?',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: darkText,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Concluída',
                          style: TextStyle(
                            fontSize: 12,
                            color: itemGreenColor,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Ícone de check
                  const Icon(
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

      // Bottom Navigation Bar
      bottomNavigationBar: const BottomNavBar(currentIndex: 1),
    );
  }
}