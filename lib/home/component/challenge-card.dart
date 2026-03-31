import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          const Text("Flutter Básico",
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          const Text("10/30 atividades"),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Continuar"),
          )
        ],
      ),
    );
  }
}
