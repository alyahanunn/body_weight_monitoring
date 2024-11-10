import 'package:flutter/material.dart';
import '../../data/health/HealthDataResponse.dart';
import '../../data/health/DummyHealthData.dart';

class TrackingController with ChangeNotifier {
  HealthDataResponse? healthData;

  TrackingController() {
    loadHealthData();
  }

  void loadHealthData() {
    healthData = DummyHealthData.healthData;
    notifyListeners();
  }
}
