import 'package:flutter/material.dart';
import 'package:islami/utils/app_assets.dart';

class RadioCard extends StatelessWidget {
  final String name;
  final bool isPlaying;
  final bool isMuted;
  final VoidCallback onPlayToggle;
  final VoidCallback onMuteToggle;

  const RadioCard({
    super.key,
    required this.name,
    required this.isPlaying,
    required this.isMuted,
    required this.onPlayToggle,
    required this.onMuteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      height: 130,
      decoration: BoxDecoration(
        color: const Color(0xFFE2BE7F),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
            isPlaying
                ? AppAssets.on
                : AppAssets.off,
          ),
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: onPlayToggle,
                icon: Icon(
                  isPlaying ? Icons.pause : Icons.play_arrow,
                  size: 36,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 15),
              IconButton(
                onPressed: onMuteToggle,
                icon: Icon(
                  isMuted ? Icons.volume_off : Icons.volume_up,
                  size: 28,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}