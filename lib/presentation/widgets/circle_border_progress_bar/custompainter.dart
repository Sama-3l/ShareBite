import 'package:flutter/cupertino.dart';
import 'dart:math' as math;

// Container(
//   height: 48,
//   width: 48,
//   child: CustomPaint(
//     painter: QuarterCirclePainter(progress: 3),
//   ),
// ),

class QuarterCirclePainter extends CustomPainter {
  final int progress;

  QuarterCirclePainter({super.repaint, required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    // Draw the black circle
    final paint = Paint()
      ..color = CupertinoColors.black
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), size.width / 2, paint);

    // Draw the green arc (1/4th of the circle)
    final arcPaint = Paint()
      ..color = CupertinoColors.activeGreen
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2; // Adjust the border thickness

    final rect = Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: size.width / 2);
    const startAngle = -math.pi / 2; // Starting angle (top center)
    double sweepAngle = (math.pi / 2) * progress; // 90 degrees (1/4th of the circle)
    canvas.drawArc(rect, startAngle, sweepAngle, false, arcPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
