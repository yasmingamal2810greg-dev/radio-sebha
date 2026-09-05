import 'package:flutter/material.dart';

class SebhaTabs extends StatelessWidget {
  const SebhaTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}