import 'package:flutter/material.dart';
import 'package:psl_2023/screens/schedule_screen.dart';
import 'package:psl_2023/screens/team_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/background.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/dasheboard.dart';
import 'history_screen.dart';
import 'venue_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CostumAppbar(
          titleText: 'PSL   SEASON 8   2023',
        ),
        body: BackGroudPic(
          padding:
              const EdgeInsets.only(top: 70, bottom: 20, left: 20, right: 20),
          child: Center(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              children: [
                DashBoard(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ScheduleScreen(),
                        ),
                      );
                    },
                    imagepath: 'assets/dashboard/schedule.png',
                    title: 'SCHEDULE'),
                DashBoard(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const VenueScreen(),
                        ),
                      );
                    },
                    imagepath: 'assets/dashboard/venues.png',
                    title: 'VENUES'),
                DashBoard(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HistoryScreen(),
                        ),
                      );
                    },
                    imagepath: 'assets/dashboard/history.png',
                    title: 'HISTORY'),
                DashBoard(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const TeamScreen(),
                        ),
                      );
                    },
                    imagepath: 'assets/dashboard/teams.png',
                    title: 'TEAMS'),
                DashBoard(
                    onTap: () async {
                      const url =
                          'https://www.espncricinfo.com/live-cricket-score';
                      await canLaunchUrl(Uri.parse(url))
                          ? launchUrl(Uri.parse(url))
                          : throw 'Network Error : url not found$url';
                    },
                    imagepath: 'assets/dashboard/live_score.png',
                    title: 'LIVE SCORE'),
                DashBoard(
                    onTap: () async {
                      const url =
                          'https://www.youtube.com/channel/UCpsPn2gSy0kPaOc6OaTsnoA';
                      await canLaunchUrl(Uri.parse(url))
                          ? launchUrl(Uri.parse(url))
                          : throw 'Network Error : url not found$url';
                    },
                    imagepath: 'assets/dashboard/highlights.png',
                    title: 'HIGHLIGHTS'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
