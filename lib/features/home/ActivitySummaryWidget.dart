import 'package:flutter/material.dart';
import '../../data/activity/ActivityResponse.dart';

class ActivitySummaryWidget extends StatelessWidget {
  final List<ActivityResponse> activities;

  ActivitySummaryWidget({required this.activities});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: activities.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(activities[index].activityType),
          subtitle: Text('${activities[index].caloriesBurned} kcal'),
        );
      },
    );
  }
}
