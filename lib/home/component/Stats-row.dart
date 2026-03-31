import 'package:flutter/cupertino.dart';
import 'package:gameflutter/home/component/stat-item.dart';

import '../page/home.dart';

class StatsRow extends StatelessWidget {
  const StatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        StatItem(title: "XP total", value: "1.250"),
        StatItem(title: "Conquistas", value: "4"),
        StatItem(title: "Desafios", value: "12"),
      ],
    );
  }
}