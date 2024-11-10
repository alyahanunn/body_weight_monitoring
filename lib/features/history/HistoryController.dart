import 'package:flutter/material.dart';
import '../../data/activity/DummyActivity.dart';
import '../../data/activity/ActivityResponse.dart';

class HistoryController with ChangeNotifier {
  List<ActivityResponse> activityLog = [];

  HistoryController() {
    loadActivityLog();
  }

  void loadActivityLog() {
    activityLog = DummyActivity.activityData;
    notifyListeners();
  }
}
