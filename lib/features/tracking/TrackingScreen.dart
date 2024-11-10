import 'package:flutter/material.dart';
import 'TrackingController.dart';
import 'StepHeartRateWidget.dart';

class TrackingScreen extends StatelessWidget {
  final TrackingController controller = TrackingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Health Tracking')),
      body: StepHeartRateWidget(healthData: controller.healthData),
    );
  }
}
