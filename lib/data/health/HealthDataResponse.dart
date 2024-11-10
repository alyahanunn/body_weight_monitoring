class HealthDataResponse {
  final int steps;
  final int heartRate;

  HealthDataResponse({required this.steps, required this.heartRate});

  factory HealthDataResponse.fromJson(Map<String, dynamic> json) {
    return HealthDataResponse(
      steps: json['steps'] ?? 0,
      heartRate: json['heartRate'] ?? 0,
    );
  }
}
