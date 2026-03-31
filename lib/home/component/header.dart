import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Olá, Sofia 👋", style: TextStyle(fontSize: 18)),
            Text("Bora continuar aprendendo?",
                style: TextStyle(fontSize: 14, color: Colors.grey)),
          ],
        ),
        CircleAvatar(child: Icon(Icons.person)),
      ],
    );
  }
}