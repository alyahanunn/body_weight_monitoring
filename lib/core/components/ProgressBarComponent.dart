import 'package:flutter/material.dart';

class ProgressBarComponent extends StatelessWidget {
  final double progress;

  const ProgressBarComponent({required this.progress});

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: progress,
      backgroundColor: Colors.grey[300],
      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
    );
  }
}
