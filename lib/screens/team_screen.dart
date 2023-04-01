import 'package:flutter/material.dart';
import 'package:psl_2023/models/team.dart';
import 'package:psl_2023/utility/data_api.dart';

import '../widgets/background.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/team_widget.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CostumAppbar(
        titleText: 'TEAMS',
      ),
      body: BackGroudPic(
        padding: const EdgeInsets.all(10),
        child: FutureBuilder<List<Team>>(
          future: DataApi.getAllTeam(context),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              List<Team> teams = snapshot.data;
              return ListView.builder(
                  itemCount: teams.length,
                  itemBuilder: (context, index) {
                    return TeamWidget(
                      teams: teams[index],
                    );
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
