import 'package:flutter/material.dart';

import '../utility/data_api.dart';
import '../widgets/background.dart';
import '../widgets/custom_appbar.dart';
import '../models/match.dart';
import '../widgets/match_widget.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CostumAppbar(
        titleText: 'SCHEDULE',
      ),
      body: BackGroudPic(
          padding: const EdgeInsets.all(10),
          child: FutureBuilder<List<Match>>(
              future: DataApi.getAllMatches(context),
              builder: ((BuildContext context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  List<Match> matches = snapshot.data;
                  return ListView.builder(
                      itemCount: matches.length,
                      itemBuilder: (context, index) {
                        return MatchWidget(
                          match: matches[index],
                        );
                      });
                }
              }))),
    );
  }
}
