import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LevelCard extends StatelessWidget {
  const LevelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Nível", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Progressão"),
            ],
          ),
          const SizedBox(height: 10),
          const LinearProgressIndicator(value: 0.8),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("1.250 XP"),
              Text("1.500 XP"),
            ],
          ),
        ],
      ),
    );
  }
}
