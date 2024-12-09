import 'package:flutter/material.dart';
import 'dart:math';
import '../../core/theme/app_theme.dart';

class BackgroundArt extends StatelessWidget {
  final Widget child;
  final bool useDarkArt;

  const BackgroundArt({
    super.key,
    required this.child,
    this.useDarkArt = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background gradient and patterns
        Positioned.fill(
          child: CustomPaint(
            painter: BackgroundPainter(
              useDarkArt: useDarkArt,
            ),
          ),
        ),
        
        // Content
        child,
      ],
    );
  }
}

class BackgroundPainter extends CustomPainter {
  final bool useDarkArt;
  final _random = Random();

  BackgroundPainter({this.useDarkArt = false});

  @override
  void paint(Canvas canvas, Size size) {
    // Create romantic gradient background
    final Paint gradientPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFFFFF0F5), // Light pink
          Color(0xFFFFE4E1), // Misty rose
          Color(0xFFFAF0E6), // Linen
          Colors.white.withOpacity(0.9),
        ],
        stops: [0.0, 0.3, 0.6, 1.0],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.width, size.height),
      gradientPaint,
    );

    // Draw floating hearts
    final heartPaint = Paint()
      ..color = Colors.pink.withOpacity(0.1)
      ..style = PaintingStyle.fill;

    for (int i = 0; i < 8; i++) {
      double x = _random.nextDouble() * size.width;
      double y = _random.nextDouble() * size.height;
      double scale = 0.02 + _random.nextDouble() * 0.03;
      
      drawHeart(canvas, Offset(x, y), size.width * scale, heartPaint);
    }

    // Draw soft waves representing emotional connection
    final wavePaint = Paint()
      ..color = Colors.pink.withOpacity(0.1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    for (int i = 0; i < 3; i++) {
      final path = Path();
      var startPoint = 0.0;
      final waveHeight = size.height * 0.03;
      final waveWidth = size.width * 0.15;
      final yOffset = size.height * (0.3 + i * 0.2);

      path.moveTo(0, yOffset);

      while (startPoint < size.width) {
        path.quadraticBezierTo(
          startPoint + waveWidth / 2,
          yOffset + waveHeight * sin(startPoint / 30),
          startPoint + waveWidth,
          yOffset,
        );
        startPoint += waveWidth;
      }

      canvas.drawPath(path, wavePaint);
    }

    // Draw connection circles
    final circlePaint = Paint()
      ..color = Colors.pink.withOpacity(0.05)
      ..style = PaintingStyle.fill;

    // Draw interconnected circles symbolizing relationships
    drawConnectedCircles(canvas, size, circlePaint);
  }

  void drawHeart(Canvas canvas, Offset center, double size, Paint paint) {
    final path = Path();
    path.moveTo(center.dx, center.dy + size / 4);
    
    // Left curve
    path.cubicTo(
      center.dx - size * 2, center.dy - size / 2,
      center.dx - size * 2, center.dy - size * 2,
      center.dx, center.dy - size / 2,
    );
    
    // Right curve
    path.cubicTo(
      center.dx + size * 2, center.dy - size * 2,
      center.dx + size * 2, center.dy - size / 2,
      center.dx, center.dy + size / 4,
    );

    canvas.drawPath(path, paint);
  }

  void drawConnectedCircles(Canvas canvas, Size size, Paint paint) {
    final radius = size.width * 0.15;
    final points = [
      Offset(size.width * 0.2, size.height * 0.3),
      Offset(size.width * 0.8, size.height * 0.4),
      Offset(size.width * 0.3, size.height * 0.7),
      Offset(size.width * 0.7, size.height * 0.8),
    ];

    // Draw connection lines
    final linePaint = Paint()
      ..color = Colors.pink.withOpacity(0.05)
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke;

    for (int i = 0; i < points.length - 1; i++) {
      canvas.drawLine(points[i], points[i + 1], linePaint);
    }

    // Draw circles
    for (final point in points) {
      canvas.drawCircle(point, radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
