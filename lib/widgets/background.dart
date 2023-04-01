import 'package:flutter/material.dart';

class BackGroudPic extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  const BackGroudPic({super.key, required this.child, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: const BoxDecoration(
        color: Colors.black87,
        image: DecorationImage(
          image: AssetImage(
            'assets/images/bg2.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}
