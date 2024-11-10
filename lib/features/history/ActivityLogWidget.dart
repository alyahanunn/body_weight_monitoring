import 'package:flutter/material.dart';
import '../../data/activity/ActivityResponse.dart';

class ActivityLogWidget extends StatelessWidget {
  final List<ActivityResponse> activityLog;

  const ActivityLogWidget({required this.activityLog});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: activityLog.length,
      itemBuilder: (context, index) {
        final activity = activityLog[index];
        return ListTile(
          title: Text(activity.activityType),
          subtitle: Text(
              '${activity.caloriesBurned} kcal, ${activity.duration} mins'),
        );
      },
    );
  }
}
