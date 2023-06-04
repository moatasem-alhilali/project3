import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:report_excel/core/components/base_table.dart';
import 'package:report_excel/core/resources/assets_fonts.dart';
import 'package:flutter/material.dart';

import 'base_popup_menu_clo.dart';

class BottomSheetCloSKills extends StatelessWidget {
  BottomSheetCloSKills();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 15,
        ),
        AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              speed: const Duration(seconds: 1),
              "Skills".toUpperCase(),
              colors: [
                Colors.black,
                Colors.grey,
              ],
              textStyle: const TextStyle(
                fontSize: 30.0,
                fontFamily: AssetsFonts.InterMedium,
              ),
            ),
          ],
          isRepeatingAnimation: true,
          onTap: () {
            print("Tap Event");
          },
        ),
        const SizedBox(
          height: 25,
        ),
        BaseTable(
          firstChildren: [
            for (int i = 0; i < 4; i++)
              const Text(
                "subCloId",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
          ],
          secondChildren: [
            for (int i = 0; i < 4; i++) BasePopupMenuClo(),
          ],
        ),
      ],
    );
  }
}
