import 'package:flutter/material.dart';
import 'package:gameflutter/home/page/desafio_screen.dart';
import 'package:gameflutter/home/page/profile_screen.dart';
import 'package:gameflutter/home/page/ranking_screen.dart';

import '../page/curso_screen.dart';
import '../page/home.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;

  const BottomNavBar({super.key, required this.currentIndex});

  void _onItemTapped(BuildContext context, int index) {
    // Se clicar na mesma aba, não faz nada
    if (index == currentIndex) return;

    // Navegação direta instanciando as telas
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const CursoScreen()),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const DesafioScreen()),
        );
        break;
      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const RankingScreen()),
        );
        break;
      case 4:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ProfileScreen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    const Color primaryPurple = Color(0xFF6B4DFA);
    const Color lightText = Color(0xFF88889D);

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      selectedItemColor: primaryPurple,
      unselectedItemColor: lightText,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      backgroundColor: Colors.white,
      elevation: 10,
      onTap: (index) => _onItemTapped(context, index),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_books),
          label: 'Trilhas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.workspace_premium_outlined),
          label: 'Desafios',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Ranking'),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Perfil',
        ),
      ],
    );
  }
}
