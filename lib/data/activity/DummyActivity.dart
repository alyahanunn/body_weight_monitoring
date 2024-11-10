import 'ActivityResponse.dart';

class DummyActivity {
  static List<ActivityResponse> activityData = [
    ActivityResponse(
        activityType: 'Running', caloriesBurned: 300, duration: 30),
    ActivityResponse(
        activityType: 'Swimming', caloriesBurned: 400, duration: 45),
  ];
}
