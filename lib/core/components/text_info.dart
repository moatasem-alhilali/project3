import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:report_excel/core/resources/assets_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TextInfo extends StatelessWidget {
  const TextInfo({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Colors.white,
        fontFamily: AssetsFonts.InterMedium,
        fontSize: 15,
      ),
      child: AnimatedTextKit(
        repeatForever: false,
        animatedTexts: [
          TyperAnimatedText(text),
        ],
        isRepeatingAnimation: false,
        onTap: () {
          print("Tap Event");
        },
      ),
    ).animate().fade(duration: 1000.ms);
  }
}
