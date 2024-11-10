import 'package:flutter/material.dart';

class HealthData {
  final String title;
  final String value;
  final String description;
  final String date;
  IconData icon; // Make this mutable so we can update it

  HealthData({
    required this.title,
    required this.value,
    required this.description,
    required this.date,
    required this.icon, // Add icon in constructor
  });

  // Method to update the icon
  void updateIcon(IconData newIcon) {
    icon = newIcon;
  }
}
