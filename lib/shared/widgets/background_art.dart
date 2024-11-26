import 'package:flutter/material.dart';
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

  BackgroundPainter({this.useDarkArt = false});

  @override
  void paint(Canvas canvas, Size size) {
    // Create gradient background
    final Paint gradientPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          AppTheme.backgroundColor,
          AppTheme.backgroundColor.withOpacity(0.8),
          Colors.white.withOpacity(0.9),
        ],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.width, size.height),
      gradientPaint,
    );

    // Draw decorative circles
    final Paint circlePaint = Paint()
      ..color = AppTheme.accentColor.withOpacity(0.1)
      ..style = PaintingStyle.fill;

    // Top left circle
    canvas.drawCircle(
      Offset(0, 0),
      size.width * 0.4,
      circlePaint,
    );

    // Bottom right circle
    canvas.drawCircle(
      Offset(size.width, size.height),
      size.width * 0.3,
      circlePaint,
    );

    // Draw wave pattern
    final Paint wavePaint = Paint()
      ..color = AppTheme.secondaryColor.withOpacity(0.1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    final path = Path();
    var startPoint = 0.0;
    final waveHeight = size.height * 0.05;
    final waveWidth = size.width * 0.1;

    path.moveTo(0, size.height * 0.7);

    while (startPoint < size.width) {
      path.quadraticBezierTo(
        startPoint + waveWidth / 2,
        size.height * 0.7 + waveHeight,
        startPoint + waveWidth,
        size.height * 0.7,
      );
      startPoint += waveWidth;
    }

    canvas.drawPath(path, wavePaint);

    // Draw small dots pattern
    final Paint dotPaint = Paint()
      ..color = AppTheme.primaryColor.withOpacity(0.1)
      ..style = PaintingStyle.fill;

    for (var i = 0; i < 50; i++) {
      final x = (size.width / 50) * i;
      final y = size.height * 0.3 + (i % 2 == 0 ? 10 : -10);
      canvas.drawCircle(Offset(x, y), 2, dotPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
