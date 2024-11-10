import 'package:flutter/material.dart';
import '../../features/home/HomeScreen.dart';
import '../../features/history/HistoryScreen.dart';
import '../../features/tracking/TrackingScreen.dart';

class RouteUtils {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/history':
        return MaterialPageRoute(builder: (_) => HistoryScreen());
      case '/tracking':
        return MaterialPageRoute(builder: (_) => TrackingScreen());
      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
