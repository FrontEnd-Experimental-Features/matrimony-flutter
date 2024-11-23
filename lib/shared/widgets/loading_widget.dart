import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AppLoadingWidget extends StatelessWidget {
  final double size;
  final Color? color;

  const AppLoadingWidget({
    super.key,
    this.size = 50,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.staggeredDotsWave(
        color: color ?? Theme.of(context).primaryColor,
        size: size,
      ),
    );
  }
}

// Overlay loading widget that covers the entire screen with a semi-transparent background
class AppLoadingOverlay extends StatelessWidget {
  const AppLoadingOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.5),
      child: const Center(
        child: AppLoadingWidget(),
      ),
    );
  }
}
