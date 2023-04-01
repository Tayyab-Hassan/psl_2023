import 'package:flutter/material.dart';
import 'package:psl_2023/utility/app_color.dart';

import '../models/team.dart';

class TeamWidget extends StatelessWidget {
  final Team teams;
  const TeamWidget({super.key, required this.teams});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
              spreadRadius: 1,
              offset: Offset(0, 8),
              color: Color.fromARGB(255, 100, 4, 4),
              blurRadius: 10,
              blurStyle: BlurStyle.normal),
        ],
        gradient: LinearGradient(colors: [
          Colors.black87,
          AppColor.primaryColor,
          Colors.black87,
        ]),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            teams.flag,
            width: 100,
            height: 80,
            fit: BoxFit.contain,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                teams.fullName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '(${teams.shortName})',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                teams.captain,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'font2',
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: 40,
            backgroundImage: AssetImage(teams.captainImage),
          )
        ],
      ),
    );
  }
}
