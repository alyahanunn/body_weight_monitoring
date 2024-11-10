import 'package:flutter/material.dart';
import 'PlanningController.dart';
import 'PlanningActivityWidget.dart';

class PlanningScreen extends StatelessWidget {
  final PlanningController controller = PlanningController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Activity Planning')),
      body: PlanningActivityWidget(controller: controller),
    );
  }
}
