import 'package:flutter/material.dart';
import 'package:islami/utils/app_assets.dart';
import 'radio_switch.dart';
import 'radio_card.dart';

class RadioTabs extends StatefulWidget {
  const RadioTabs({super.key});

  @override
  State<RadioTabs> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioTabs> {
  int _selectedTabIndex = 1;
  int? _playingIndex = 1;
  bool _isMuted = false;

  final List<String> _reciters = [
    "Ibrahim Al-Akdar",
    "Akram Alalaqmi",
    "Majed Al-Enezi",
    "Malik shaibat Alhamed",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppAssets.radio,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 10),
                // Image.asset(AppAssets.logo,
                //     height: 80),
                const SizedBox(height: 20),

                RadioSwitch(
                  selectedIndex: _selectedTabIndex,
                  onTabChanged: (index) {
                    setState(() => _selectedTabIndex = index);
                  },
                ),

                const SizedBox(height: 15),

                Expanded(
                  child: ListView.builder(
                    itemCount: _reciters.length,
                    itemBuilder: (context, index) {
                      final isCurrentPlaying = _playingIndex == index;
                      return RadioCard(
                        name: _reciters[index],
                        isPlaying: isCurrentPlaying,
                        isMuted: isCurrentPlaying && _isMuted,
                        onPlayToggle: () {
                          setState(() {
                            _playingIndex = isCurrentPlaying ? null : index;
                          });
                        },
                        onMuteToggle: () {
                          if (isCurrentPlaying) {
                            setState(() => _isMuted = !_isMuted);
                          }
                        },
                      );
                    },
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