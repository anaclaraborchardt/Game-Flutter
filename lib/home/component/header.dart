import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../page/profile_screen.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ol\u00e1, Sofia',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Bora continuar aprendendo?',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ProfileScreen()),
            );
          },
          child: const CircleAvatar(child: Icon(Icons.person)),
        ),
      ],
    );
  }
}
