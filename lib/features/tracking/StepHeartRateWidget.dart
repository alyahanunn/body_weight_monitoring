import 'package:flutter/material.dart';
import '../../data/health/HealthDataResponse.dart';

class StepHeartRateWidget extends StatelessWidget {
  final HealthDataResponse? healthData;

  const StepHeartRateWidget({required this.healthData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Steps: ${healthData?.steps ?? 0}'),
        Text('Heart Rate: ${healthData?.heartRate ?? 0} bpm'),
      ],
    );
  }
}
