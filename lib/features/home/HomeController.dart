import 'package:body_weight_monitoring_apk/core/constants/healthdata.dart';
import 'package:flutter/material.dart';

class HomeController with ChangeNotifier {
  List<HealthData> healthData = [
    HealthData(
      title: 'Gain Muscle',
      value: '2.0 points',
      description: 'Increase in muscle mass',
      date: '2024-11-10',
      icon: Icons.fitness_center,
    ),
    HealthData(
      title: 'Boost Stamina',
      value: '87.9%',
      description: 'Increase in stamina',
      date: '2024-11-10',
      icon: Icons.favorite,
    ),
    HealthData(
      title: 'Weight Loss',
      value: '5.2 kg',
      description: 'Decrease in weight',
      date: '2024-11-10',
      icon: Icons.run_circle,
    ),
  ];

  // Method to update the icon of a health data entry
  void updateHealthDataIcon(int index, IconData newIcon) {
    healthData[index].updateIcon(newIcon);
    notifyListeners(); // Notify listeners to update UI
  }
}
