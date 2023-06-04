import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:report_excel/core/components/base_table.dart';
import 'package:report_excel/core/resources/assets_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'base_popup_menu_clo.dart';

class BottomSheetCloKnowledge extends StatelessWidget {
  BottomSheetCloKnowledge({
    super.key,
 
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 15,
        ),
        AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              speed: const Duration(seconds: 1),
              "Knowledge & Understanding".toUpperCase(),
              colors: [
                Colors.black,
                Colors.grey,
              ],
              textStyle: const TextStyle(
                fontSize: 20.0,
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
              Text(
                "subCloId",
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20),
              ),
          ],
          secondChildren: [
            for (int i = 0; i <4; i++) BasePopupMenuClo(),
          ],
        ),
      ],
    );
  }
}
