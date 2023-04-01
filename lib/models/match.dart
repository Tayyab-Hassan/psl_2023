class Match {
  late String date, teamOne, teamTwo, flagOne, flagTwo, match, venue, time;

  Match({
    required this.date,
    required this.teamOne,
    required this.teamTwo,
    required this.flagOne,
    required this.flagTwo,
    required this.match,
    required this.venue,
    required this.time,
  });
  // jason to Dart Objects
  factory Match.fromJSON(Map<String, dynamic> map) {
    return Match(
      date: map['date'],
      teamOne: map['teamOne'],
      teamTwo: map['teamTwo'],
      flagOne: map['flagOne'],
      flagTwo: map['flagTwo'],
      match: map['match'],
      venue: map['venue'],
      time: map['time'],
    );
  }
}
