import 'package:flutter/material.dart';

import '../component/bottom-nav-bar.dart';

class RankingScreen extends StatelessWidget {
  const RankingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color darkText = Color(0xFF28283C);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'Ranking',
          style: TextStyle(
            color: darkText,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: darkText),
          onPressed: () {
            // Ação de voltar
          },
        ),
      ),

      // Utilizando o footer com o index 3 (Ranking)
      bottomNavigationBar: const BottomNavBar(currentIndex: 3),

      body: Column(
        children: [
          // Abas (Global, Amigos, Trilha)
          _buildTabs(),

          const SizedBox(height: 24),

          // Pódio dos 3 primeiros
          _buildPodium(),

          const SizedBox(height: 16),

          // Lista do restante do ranking
          Expanded(
            child: _buildRankingList(),
          ),
        ],
      ),
    );
  }

  // --- COMPONENTES DA TELA ---

  Widget _buildTabs() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: const Color(0xFFF2F3F7),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFEBEBFA),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Global',
                  style: TextStyle(
                    color: Color(0xFF6B4DFA),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Expanded(
              child: Center(
                child: Text(
                  'Amigos',
                  style: TextStyle(color: Color(0xFF88889D)),
                ),
              ),
            ),
            const Expanded(
              child: Center(
                child: Text(
                  'Trilha',
                  style: TextStyle(color: Color(0xFF88889D)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPodium() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 2º Lugar
          _PodiumCard(
            name: 'Maria',
            xp: '2.300 XP',
            height: 160,
            bgColor: const Color(0xFFF0F4FA),
            crownColor: const Color(0xFFB0BEC5), // Prata
            isFirst: false,
          ),
          const SizedBox(width: 8),

          // 1º Lugar
          _PodiumCard(
            name: 'João',
            xp: '2.450 XP',
            height: 190,
            bgColor: const Color(0xFFFFF7E0),
            crownColor: const Color(0xFFFFC107), // Ouro
            isFirst: true,
          ),
          const SizedBox(width: 8),

          // 3º Lugar
          _PodiumCard(
            name: 'Pedro',
            xp: '2.100 XP',
            height: 145,
            bgColor: const Color(0xFFFFF0E6),
            crownColor: const Color(0xFFFF8A65), // Bronze
            isFirst: false,
          ),
        ],
      ),
    );
  }

  Widget _buildRankingList() {
    // Dados mocados simulando a lista
    final List<Map<String, dynamic>> rankingData = [
      {'rank': '4', 'name': 'Ana', 'xp': '1.950 XP', 'isMe': false},
      {'rank': '5', 'name': 'Carlos', 'xp': '1.800 XP', 'isMe': false},
      {'rank': '6', 'name': 'Você', 'xp': '1.250 XP', 'isMe': true},
      {'rank': '7', 'name': 'Juliana', 'xp': '1.100 XP', 'isMe': false},
      {'rank': '8', 'name': 'Rafael', 'xp': '1.050 XP', 'isMe': false},
    ];

    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      itemCount: rankingData.length,
      separatorBuilder: (context, index) => const Divider(
        color: Color(0xFFEEEEEE),
        height: 1,
      ),
      itemBuilder: (context, index) {
        final item = rankingData[index];
        final bool isMe = item['isMe'];

        return Container(
          decoration: BoxDecoration(
            color: isMe ? const Color(0xFFEBEBFA) : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          child: Row(
            children: [
              // Número do ranking
              SizedBox(
                width: 24,
                child: Text(
                  item['rank'],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xFF28283C),
                  ),
                ),
              ),

              // Avatar
              const CircleAvatar(
                radius: 18,
                backgroundColor: Color(0xFFD9D9D9),
                child: Icon(Icons.person, color: Colors.white, size: 20),
              ),
              const SizedBox(width: 12),

              // Nome
              Expanded(
                child: Text(
                  item['name'],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xFF28283C),
                  ),
                ),
              ),

              // XP
              Text(
                item['xp'],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color(0xFF28283C),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// --- CLASSE AUXILIAR PARA O CARD DO PÓDIO ---

class _PodiumCard extends StatelessWidget {
  final String name;
  final String xp;
  final double height;
  final Color bgColor;
  final Color crownColor;
  final bool isFirst;

  const _PodiumCard({
    required this.name,
    required this.xp,
    required this.height,
    required this.bgColor,
    required this.crownColor,
    required this.isFirst,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          // Card de Fundo
          Container(
            height: height,
            margin: const EdgeInsets.only(top: 16), // Espaço para a coroa vazar
            padding: const EdgeInsets.only(top: 36, bottom: 16), // Espaço pro avatar
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color(0xFF28283C),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      xp,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF88889D),
                      ),
                    ),
                  ],
                ),
                // Ícone/Medalha decorativa na base
                Container(
                  width: 40,
                  height: 32,
                  decoration: BoxDecoration(
                    color: crownColor.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: isFirst
                      ? const Text(
                    '1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )
                      : Icon(Icons.star, color: crownColor, size: 16),
                ),
              ],
            ),
          ),

          // Avatar e Coroa
          Positioned(
            top: -10,
            child: Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: isFirst ? 28 : 24,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: isFirst ? 26 : 22,
                    backgroundColor: const Color(0xFFD9D9D9),
                    child: const Icon(Icons.person, color: Colors.white, size: 28),
                  ),
                ),
                Positioned(
                  top: -15,
                  child: Icon(
                    Icons.workspace_premium,
                    color: crownColor,
                    size: isFirst ? 32 : 24,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}