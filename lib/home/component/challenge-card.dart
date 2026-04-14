import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../page/curso_screen.dart';

class ChallengeCard extends StatelessWidget {
  const ChallengeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Flutter B\u00e1sico',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          const Text('10/30 atividades'),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CursoScreen()),
              );
            },
            child: const Text('Continuar'),
          ),
        ],
      ),
    );
  }
}
