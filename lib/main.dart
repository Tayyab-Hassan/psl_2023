import 'package:flutter/material.dart';
import 'package:psl_2023/screens/splsh_screen.dart';
import 'package:psl_2023/utility/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PSL SEASON 8 2023',
      theme: ThemeData(
        primaryColor: AppColor.primaryColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.primaryColor,
        ),
      ),
      home: const FirstScreen(),
    );
  }
}
