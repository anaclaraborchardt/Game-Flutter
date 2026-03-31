import 'package:flutter/material.dart';

import '../component/Stats-row.dart';
import '../component/bottom-nav-bar.dart';
import '../component/challenge-card.dart';
import '../component/header.dart';
import '../component/level-card.dart';
import '../component/section-title.dart';
import '../component/streak-card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(),
              const SizedBox(height: 20),
              const LevelCard(),
              const SizedBox(height: 16),
              const StreakCard(),
              const SizedBox(height: 16),
              const SectionTitle(title: "Trilhas em andamento"),
              const SizedBox(height: 8),
              const ChallengeCard(),
              const SizedBox(height: 16),
              const SectionTitle(title: "Estatísticas"),
              const SizedBox(height: 8),
              const StatsRow(),
            ],
          ),
        ),
      ),
    );
  }
}



