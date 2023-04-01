class History {
  late String winner;
  late String runnerUp;
  late String winnerFlag;
  late String runnerUpFlag;
  late String winnerCaptain;
  late String runnerUpCaptain;
  late String winnerScore;
  late String runnerUpScore;
  late String year;
  History({
    required this.winner,
    required this.runnerUp,
    required this.winnerFlag,
    required this.winnerCaptain,
    required this.winnerScore,
    required this.runnerUpCaptain,
    required this.runnerUpFlag,
    required this.runnerUpScore,
    required this.year,
  });

  factory History.fromJSON(Map<String, dynamic> map) {
    return History(
        winner: map['winner'],
        runnerUp: map['runnerUp'],
        winnerFlag: map['winnerFlag'],
        winnerCaptain: map['winnerCaptain'],
        winnerScore: map['winnerScore'],
        runnerUpCaptain: map['runnerUpCaptain'],
        runnerUpFlag: map['runnerUpFlag'],
        runnerUpScore: map['runnerUpScore'],
        year: map['year']);
  }
}
