import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:islami/utils/app_assets.dart';

class SebhaWidget extends StatelessWidget {
  final int counter;
  final String zikr;
  final double rotationAngle;
  final VoidCallback onTap;

  const SebhaWidget({
    super.key,
    required this.counter,
    required this.zikr,
    required this.rotationAngle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // 1. الشاهد الثابت
          Positioned(
            top: 0,
            child: Image.asset(
              AppAssets.sebha_head,
              height: 70,
              errorBuilder: (context, error, stackTrace) => const Icon(
                Icons.nature_people,
                size: 50,
                color: Color(0xFFE2BE7F),
              ),
            ),
          ),

          // 2. جسم السبحة المتحرك
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: AnimatedRotation(
              turns: rotationAngle / (2 * math.pi),
              duration: const Duration(milliseconds: 200),
              child: Image.asset(
                AppAssets.sebha_body,
                width: 280,
                height: 280,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: 280,
                  height: 280,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0xFFE2BE7F), width: 8),
                  ),
                ),
              ),
            ),
          ),

          // 3. النص والعداد بالمنتصف
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  zikr,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  '$counter',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
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