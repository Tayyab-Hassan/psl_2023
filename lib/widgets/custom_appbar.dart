import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class CostumAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;
  const CostumAppbar({Key? key, required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      title: DefaultTextStyle(
        style: const TextStyle(
          fontFamily: 'font3',
          fontSize: 40.0,
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            WavyAnimatedText(titleText),
          ],
          isRepeatingAnimation: true,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
