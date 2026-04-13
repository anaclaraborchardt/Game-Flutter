import 'package:flutter/material.dart';

import '../component/bottom-nav-bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color darkText = Color(0xFF28283C);
    const Color lightText = Color(0xFF88889D);
    const Color primaryPurple = Color(0xFF6B4DFA);
    const Color surface = Color(0xFFF5F7FB);
    const Color softPurple = Color(0xFFEBEBFA);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: darkText),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined, color: darkText),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 4),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Column(
                  children: [
                    _ProfileAvatar(),
                    SizedBox(height: 16),
                    Text(
                      'João Silva',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: darkText,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'joao@email.com',
                      style: TextStyle(fontSize: 14, color: lightText),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFE7E9F0)),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _BadgeIcon(
                      icon: Icons.shield_rounded,
                      backgroundColor: softPurple,
                      iconColor: primaryPurple,
                    ),
                    SizedBox(width: 12),
                    Expanded(child: _LevelInfo()),
                  ],
                ),
              ),
              const SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Conquistas',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: darkText,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: primaryPurple,
                      padding: EdgeInsets.zero,
                      minimumSize: const Size(0, 0),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: const Text('Ver todas'),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              const Row(
                children: [
                  Expanded(
                    child: _AchievementCard(
                      icon: Icons.star_rounded,
                      iconColor: Color(0xFF7C4DFF),
                      backgroundColor: Color(0xFFF2ECFF),
                      title: 'Primeiro Passo',
                      subtitle: 'Conclua sua\nprimeira aula',
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: _AchievementCard(
                      icon: Icons.local_fire_department_rounded,
                      iconColor: Color(0xFFFF7A00),
                      backgroundColor: Color(0xFFFFF1E5),
                      title: 'Sequência de 7',
                      subtitle: 'Estude 7 dias\nseguidos',
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: _AchievementCard(
                      icon: Icons.emoji_events_rounded,
                      iconColor: Color(0xFF1877F2),
                      backgroundColor: Color(0xFFEAF2FF),
                      title: 'Desafio Mestre',
                      subtitle: 'Complete 10\ndesafios',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 28),
              const Text(
                'Estatísticas',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: darkText,
                ),
              ),
              const SizedBox(height: 14),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFE7E9F0)),
                ),
                child: const Column(
                  children: [
                    _StatsTile(
                      icon: Icons.menu_book_rounded,
                      iconColor: Color(0xFF3B82F6),
                      iconBackground: Color(0xFFEAF2FF),
                      title: '12',
                      subtitle: 'Aulas concluídas',
                    ),
                    Divider(height: 1, color: Color(0xFFF0F1F5)),
                    _StatsTile(
                      icon: Icons.emoji_events_rounded,
                      iconColor: Color(0xFFF59E0B),
                      iconBackground: Color(0xFFFFF4DB),
                      title: '4',
                      subtitle: 'Conquistas',
                    ),
                    Divider(height: 1, color: Color(0xFFF0F1F5)),
                    _StatsTile(
                      icon: Icons.local_fire_department_rounded,
                      iconColor: Color(0xFFFF7A00),
                      iconBackground: Color(0xFFFFF1E5),
                      title: '7',
                      subtitle: 'Sequência atual (dias)',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: primaryPurple,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Ver Histórico',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: 22,
                alignment: Alignment.center,
                child: Container(
                  width: 120,
                  height: 4,
                  decoration: BoxDecoration(
                    color: surface,
                    borderRadius: BorderRadius.circular(999),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileAvatar extends StatelessWidget {
  const _ProfileAvatar();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92,
      height: 92,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFD7DEE6), Color(0xFFAAB7C4)],
        ),
      ),
      child: const Center(
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Color(0xFFF7E4D4),
          child: Icon(Icons.person, size: 44, color: Color(0xFF6B4DFA)),
        ),
      ),
    );
  }
}

class _LevelInfo extends StatelessWidget {
  const _LevelInfo();

  @override
  Widget build(BuildContext context) {
    const Color darkText = Color(0xFF28283C);
    const Color lightText = Color(0xFF88889D);
    const Color primaryPurple = Color(0xFF6B4DFA);
    const Color progressBackground = Color(0xFFE5E7EF);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Nível 5',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: darkText,
          ),
        ),
        const SizedBox(height: 4),
        const Text(
          'Desenvolvedor Iniciante',
          style: TextStyle(fontSize: 13, color: lightText),
        ),
        const SizedBox(height: 14),
        ClipRRect(
          borderRadius: BorderRadius.circular(999),
          child: const LinearProgressIndicator(
            value: 0.83,
            minHeight: 8,
            backgroundColor: progressBackground,
            valueColor: AlwaysStoppedAnimation<Color>(primaryPurple),
          ),
        ),
        const SizedBox(height: 8),
        const Align(
          alignment: Alignment.centerRight,
          child: Text(
            '1.250 / 1.500 XP',
            style: TextStyle(
              fontSize: 12,
              color: lightText,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class _BadgeIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;

  const _BadgeIcon({
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, color: iconColor),
    );
  }
}

class _AchievementCard extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final String title;
  final String subtitle;

  const _AchievementCard({
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    const Color darkText = Color(0xFF28283C);
    const Color lightText = Color(0xFF88889D);

    return Container(
      padding: const EdgeInsets.fromLTRB(12, 14, 12, 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE7E9F0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, color: iconColor, size: 32),
          ),
          const SizedBox(height: 14),
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: darkText,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 12,
              color: lightText,
              height: 1.35,
            ),
          ),
        ],
      ),
    );
  }
}

class _StatsTile extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color iconBackground;
  final String title;
  final String subtitle;

  const _StatsTile({
    required this.icon,
    required this.iconColor,
    required this.iconBackground,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    const Color darkText = Color(0xFF28283C);
    const Color lightText = Color(0xFF88889D);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      child: Row(
        children: [
          _BadgeIcon(
            icon: icon,
            backgroundColor: iconBackground,
            iconColor: iconColor,
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: darkText,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 13, color: lightText),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
