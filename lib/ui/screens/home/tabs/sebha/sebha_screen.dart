import 'package:flutter/material.dart';
import 'package:islami/utils/app_assets.dart';
import 'package:islami/utils/app_colors.dart';
import 'sebha_logic.dart';
import 'sebha_tabs.dart';
import 'sebha_widget.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  final SebhaLogic _logic = SebhaLogic();

  void _handleTap() {
    setState(() {
      _logic.increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppAssets.sebha, // تأكدي من اسم صورة الخلفية عندك في المجلد
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 20),
                  const SebhaTabs(),

                  // جسم السبحة
                  SebhaWidget(
                    counter: _logic.counter,
                    zikr: _logic.currentZikr,
                    rotationAngle: _logic.rotationAngle,
                    onTap: _handleTap,
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}