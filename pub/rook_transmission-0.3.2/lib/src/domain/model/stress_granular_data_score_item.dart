/// This class represents a single Stress registry.
///
/// * [dateTime] - Timestamp in UTC.
class StressGranularDataScoreItem {
  DateTime dateTime;
  int stressScore;

  StressGranularDataScoreItem({
    required this.dateTime,
    required this.stressScore,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StressGranularDataScoreItem &&
          runtimeType == other.runtimeType &&
          dateTime == other.dateTime &&
          stressScore == other.stressScore;

  @override
  int get hashCode => dateTime.hashCode ^ stressScore.hashCode;

  @override
  String toString() {
    return 'StressGranularDataScoreItem{dateTime: $dateTime, stressScore: $stressScore}';
  }
}
