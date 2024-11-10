import 'package:flutter/material.dart';
import 'HistoryController.dart';
import 'ActivityLogWidget.dart';

class HistoryScreen extends StatelessWidget {
  final HistoryController controller = HistoryController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Activity History')),
      body: ActivityLogWidget(activityLog: controller.activityLog),
    );
  }
}
