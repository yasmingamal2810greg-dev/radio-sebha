import 'dart:math' as math;

class SebhaLogic {
  int counter = 0;
  int zikrIndex = 0;
  double rotationAngle = 0.0;

  final List<String> azkar = [
    "سبحان الله",
    "الحمد لله",
    "لا إله إلا الله",
    "الله أكبر",
  ];

  String get currentZikr => azkar[zikrIndex];

  void increment() {
    counter++;
    rotationAngle += (2 * math.pi / 30);

    if (counter == 33) {
      counter = 0;
      zikrIndex = (zikrIndex + 1) % azkar.length;
    }
  }
}