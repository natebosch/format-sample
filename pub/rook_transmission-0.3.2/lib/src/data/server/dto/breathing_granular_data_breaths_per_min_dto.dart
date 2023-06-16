class BreathingGranularDataBreathsPerMinDTO {
  String dateTime;
  int breathsPerMin;

  BreathingGranularDataBreathsPerMinDTO({
    required this.dateTime,
    required this.breathsPerMin,
  });

  Map<String, Object> toMap() {
    return {
      'datetime': dateTime,
      'breaths_per_min': breathsPerMin,
    };
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BreathingGranularDataBreathsPerMinDTO &&
          runtimeType == other.runtimeType &&
          dateTime == other.dateTime &&
          breathsPerMin == other.breathsPerMin;

  @override
  int get hashCode => dateTime.hashCode ^ breathsPerMin.hashCode;

  @override
  String toString() {
    return 'BreathingGranularDataBreathsPerMinDTO{dateTime: $dateTime, breathsPerMin: $breathsPerMin}';
  }
}
