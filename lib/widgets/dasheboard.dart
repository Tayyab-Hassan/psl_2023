import 'package:flutter/material.dart';

import '../utility/app_color.dart';

class DashBoard extends StatelessWidget {
  final String imagepath, title;
  final VoidCallback onTap;
  const DashBoard({
    super.key,
    required this.imagepath,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black87,
                AppColor.primaryColor,
                Colors.black87,
              ],
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 3,
                  offset: Offset(5, 5),
                  color: Color.fromARGB(255, 100, 4, 4),
                  blurRadius: 15,
                  blurStyle: BlurStyle.normal),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Image.asset(
                  imagepath,
                  width: 100,
                  height: 100,
                ),
                Text(title,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: MediaQuery.of(context).size.width * 0.08,
                        fontFamily: 'font3',
                        color: Colors.white))
              ]),
        ),
      ),
    );
  }
}
