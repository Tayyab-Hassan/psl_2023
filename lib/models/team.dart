class Team {
  late String fullName, shortName, captain, captainImage, flag;

  Team({
    required this.captain,
    required this.captainImage,
    required this.fullName,
    required this.shortName,
    required this.flag,
  });

  factory Team.fromJSON(Map<String, dynamic> map) {
    return Team(
        captain: map['captain'],
        captainImage: map['captainImage'],
        fullName: map['fullName'],
        shortName: map['shortName'],
        flag: map['flag']);
  }
}
