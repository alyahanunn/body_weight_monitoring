import 'package:flutter/material.dart';

class PlanningController with ChangeNotifier {
  List<String> plannedActivities = [];

  void addActivity(String activity) {
    plannedActivities.add(activity);
    notifyListeners();
  }
}
