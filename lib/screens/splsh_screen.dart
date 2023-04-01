import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:psl_2023/screens/home_screen.dart';
import 'dart:math' as math;

import 'package:psl_2023/utility/app_color.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 4),
    vsync: this,
  )..repeat();
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 7),
        () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        mini: false,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        },
        splashColor: Colors.cyanAccent,
        backgroundColor: AppColor.primaryColor,
        child: const Text(
          'START',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: AppColor.primaryColor,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColor.primaryColor,
                Colors.black87,
                Colors.black87,
                AppColor.primaryColor,
                Colors.black87,
                Colors.black87,
                AppColor.primaryColor,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/batsman.png',
                width: 300,
                height: 300,
              ),
              const SizedBox(
                height: 50,
              ),
              AnimatedBuilder(
                  animation: _controller,
                  child: const Center(
                    child: Image(
                      width: 150,
                      height: 150,
                      image: AssetImage('assets/images/ball.png'),
                    ),
                  ),
                  builder: (BuildContext context, Widget? child) {
                    return Transform.rotate(
                      angle: _controller.value * 2.0 * math.pi,
                      child: child,
                    );
                  }),
              const SizedBox(height: 40),
              Center(
                child: Column(
                  children: [
                    DefaultTextStyle(
                      style: const TextStyle(
                        fontFamily: 'font3',
                        fontSize: 50.0,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText('P S L  SEASON 8  2023'),
                        ],
                        isRepeatingAnimation: true,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      ' Developed By Tayyab Hassan ',
                      style: TextStyle(
                        fontFamily: 'font2',
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
