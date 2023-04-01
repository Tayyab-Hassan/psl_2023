import 'package:flutter/material.dart';
import 'package:psl_2023/models/history.dart';
import 'package:psl_2023/utility/app_color.dart';

class HistoryWidget extends StatelessWidget {
  final History history;
  const HistoryWidget({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Teams(teamName: history.winner, teamflag: history.winnerFlag),
            const CircleAvatar(
              radius: 25,
              backgroundColor: AppColor.primaryColor,
              child: Text(
                'VS',
                style: TextStyle(
                  fontFamily: 'font3',
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
            Teams(teamName: history.runnerUp, teamflag: history.runnerUpFlag),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                history.winnerCaptain,
                width: 100,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  history.year,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/images/topy.png',
                  width: 80,
                  height: 120,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                history.runnerUpCaptain,
                width: 100,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
              'WINNER',
              style: TextStyle(
                color: Colors.green,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'RUNNER UP',
              style: TextStyle(
                color: Colors.red,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              history.winnerScore,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              history.runnerUpScore,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}

class Teams extends StatelessWidget {
  final String teamName, teamflag;
  const Teams({
    super.key,
    required this.teamName,
    required this.teamflag,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: AlignmentDirectional.centerStart,
            colors: [
              Colors.grey,
              Colors.black,
              AppColor.primaryColor,
              Colors.black,
              Colors.grey,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              backgroundImage: AssetImage(
                'assets/flags/$teamflag',
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              teamName,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
