import 'package:flutter/material.dart';
import 'PlanningController.dart';

class PlanningActivityWidget extends StatelessWidget {
  final PlanningController controller;

  const PlanningActivityWidget({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => controller.addActivity('New Activity'),
          child: Text('Add Activity'),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: controller.plannedActivities.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text(controller.plannedActivities[index]));
            },
          ),
        ),
      ],
    );
  }
}
