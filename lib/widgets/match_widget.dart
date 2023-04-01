import 'package:flutter/material.dart';
import 'package:psl_2023/utility/app_color.dart';
import '../models/match.dart';
import '../utility/helper.dart';

class MatchWidget extends StatelessWidget {
  final Match match;
  const MatchWidget({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.only(bottom: 15),
      child: Stack(alignment: Alignment.center, children: [
        Row(
          children: [
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(9.0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topLeft, colors: [
                  Colors.black87,
                  AppColor.primaryColor,
                ]),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 1,
                      offset: Offset(0, 8),
                      color: Color.fromARGB(255, 100, 4, 4),
                      blurRadius: 10,
                      blurStyle: BlurStyle.normal),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        RoundFlag(flag: match.flagOne),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          match.teamOne,
                          style: const TextStyle(
                              fontFamily: 'font2',
                              color: Colors.white,
                              fontSize: 17),
                        ),
                      ],
                    ),
                    const Text(
                      'VS',
                      style: TextStyle(
                          fontFamily: 'font3',
                          fontSize: 27,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        RoundFlag(flag: match.flagTwo),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          match.teamTwo,
                          style: const TextStyle(
                              fontFamily: 'font2',
                              color: Colors.white,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ]),
            )),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 20.0),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(end: Alignment.bottomRight, colors: [
                    AppColor.primaryColor,
                    Colors.black87,
                  ]),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 1,
                        offset: Offset(0, 8),
                        color: Color.fromARGB(255, 100, 4, 4),
                        blurRadius: 10,
                        blurStyle: BlurStyle.normal),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(Helper.getData(match.date),
                        style: const TextStyle(
                            fontSize: 23,
                            fontFamily: 'font2',
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                    Text(Helper.getGmt(match.date),
                        style: const TextStyle(
                            fontFamily: 'font2',
                            fontSize: 17,
                            color: Colors.white)),
                    Text(match.time,
                        style: const TextStyle(
                            fontFamily: 'font2',
                            fontSize: 20,
                            color: Colors.white)),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Text('Venue: ${match.venue}',
                          style: const TextStyle(
                              fontFamily: 'font2',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Image.asset(
          'assets/images/player_icon.png',
          width: 50,
          height: 50,
          color: Colors.white,
        ),
      ]),
    );
  }
}

class RoundFlag extends StatelessWidget {
  final String flag;
  const RoundFlag({super.key, required this.flag});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
            width: 2,
          )),
      child: ClipOval(
        child: Image.asset(
          'assets/flags/$flag',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
