import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:report_excel/core/components/base_progress_button.dart';
import 'package:report_excel/core/components/base_table.dart';
import 'package:report_excel/core/resources/assets_fonts.dart';

import 'package:flutter/material.dart';
import 'package:progress_state_button/progress_button.dart';

class BottomSheetCloBaseData extends StatelessWidget {
  const BottomSheetCloBaseData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 15,
        ),
        AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              speed: const Duration(seconds: 1),
              "title",
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
            _myInput(hint: "basecloid"),
          ],
          secondChildren: [
            _myInput(hint: "cloDescription"),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        BaseProgressButton(
          text: "Update",
          buttonState: ButtonState.idle,
          onPressed: () {},
        ),
      ],
    );
  }
}

class _myInput extends StatelessWidget {
  _myInput({
    super.key,
    this.hint,
  });
  String? hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: null,
      maxLength: null,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintStyle: const TextStyle(),
        fillColor: Colors.transparent,
        hintText: hint ??
            "clo description clo description clo description clo description clo description ",
        border: InputBorder.none,
      ),
    );
  }
}
