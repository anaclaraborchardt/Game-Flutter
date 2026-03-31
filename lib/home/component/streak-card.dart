import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StreakCard extends StatelessWidget {
  const StreakCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Row(
        children: [
          Icon(Icons.local_fire_department, color: Colors.orange),
          SizedBox(width: 10),
          Text("Sequência: 7 dias"),
        ],
      ),
    );
  }
}
