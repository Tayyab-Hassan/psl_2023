import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:psl_2023/models/history.dart';
import 'package:psl_2023/models/team.dart';
import '../models/match.dart';
import '../models/venue.dart';

class DataApi {
  static Future<List<Match>> getAllMatches(BuildContext context) async {
    var matches = <Match>[];
    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/psl_8_2023.json');
    var jsonData = json.decode(data);
    var jsonSchdule = jsonData['schedule'];

    for (var jsonMatch in jsonSchdule) {
      Match match = Match.fromJSON(jsonMatch);
      matches.add(match);
    }
    return matches;
  }

  static Future<List<Venues>> getAllVenues(BuildContext context) async {
    var venues = <Venues>[];
    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/psl_8_2023.json');
    var jsonData = json.decode(data);
    var jsonSchdule = jsonData['venues'];

    for (var jsonMatch in jsonSchdule) {
      Venues venue = Venues.fromJSON(jsonMatch);
      venues.add(venue);
    }
    return venues;
  }

  static Future<List<History>> getAllHistroy(BuildContext context) async {
    var history1 = <History>[];
    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/psl_8_2023.json');
    var jsonData = json.decode(data);
    var jsonSchdule = jsonData['history'];

    for (var jsonHistory in jsonSchdule) {
      History history = History.fromJSON(jsonHistory);
      history1.add(history);
    }
    return history1;
  }

  static Future<List<Team>> getAllTeam(BuildContext context) async {
    var team1 = <Team>[];
    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/psl_8_2023.json');
    var jsonData = json.decode(data);
    var jsonSchdule = jsonData['teams'];

    for (var jsonTeam in jsonSchdule) {
      Team team = Team.fromJSON(jsonTeam);
      team1.add(team);
    }
    return team1;
  }
}
