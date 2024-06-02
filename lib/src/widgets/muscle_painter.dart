import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:muscle_selector/src/models/muscle.dart';

class MusclePainter extends CustomPainter {
  final List<Muscle> muscles;
  final Paint selectedPen;
  final Paint pen;

  MusclePainter({
    required this.muscles,
    required this.selectedPen,
    required this.pen,
  });

  @override
  void paint(Canvas canvas, Size size) {
    for (var muscle in muscles) {
      // Assuming you have some way to check if a muscle is selected
      bool isSelected = false; // Replace with actual selection logic
      if (isSelected) {
        canvas.drawPath(muscle.path, selectedPen);
      } else {
        canvas.drawPath(muscle.path, pen);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

bool isPositionInPath(Muscle muscle, Offset position, double inverseScale) {
  return muscle.path.contains(position.scale(inverseScale, inverseScale));
}
