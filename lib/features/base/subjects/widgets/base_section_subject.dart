import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:progress_state_button/progress_button.dart';
import 'package:report_excel/core/components/base_bottom_sheet.dart';
import 'package:report_excel/core/components/base_input_field.dart';
import 'package:report_excel/core/components/base_item.dart';
import 'package:report_excel/core/components/base_my_text.dart';
import 'package:report_excel/core/components/base_progress_button.dart';
import 'package:report_excel/core/components/base_table.dart';
import 'package:report_excel/core/components/text_info.dart';
import 'package:report_excel/core/resources/assets_fonts.dart';
import 'package:report_excel/core/resources/size_config.dart';
import 'package:report_excel/core/utils/dark_mode.dart';

import 'package:flutter/material.dart';

import 'base_popup_menu_quiz.dart';

class BaseBodyViewSectionSubject extends StatelessWidget {
  BaseBodyViewSectionSubject({
    super.key,
  });

  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Export Clo Excel?"),
          ),
        ),
        for (int i = 0; i < 4; i++)
          SubItem(
            backGroundColor: ColorsManager.main,
            widget: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete_outline_outlined,
                color: Colors.white,
              ),
            ),
            title: "dataQuizType",
            onTap: () async {
              showBottomSheetFunction(
                context: context,
                child: BaseBottomSheetSectionSubject(),
              );
            },
          )
      ],
    );
  }
}

//----------------Bottom Sheet--------------------

class BaseBottomSheetSectionSubject extends StatelessWidget {
  BaseBottomSheetSectionSubject({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 15,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      speed: const Duration(seconds: 1),
                      "titleQuiz",
                      colors: [
                        Colors.black,
                        Colors.grey,
                      ],
                      textStyle: TextStyle(
                        fontSize: SizeConfig.blockSizeHorizontal! * 8,
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
                  height: 15,
                ),
                const TextInfo(
                    text:
                        "Choose the clo for each question through the icon"),
                const SizedBox(
                  height: 5,
                ),
                BaseTable(
                  firstChildren: [
                    for (int i = 0; i < 4; i++)
                      const BaseMyText(
                        title: "name",
                      ),
                  ],
                  secondChildren: [
                    for (int index = 0; index < 4; index++)
                      Column(
                        children: [
                          BasePopupMenuQuizGlobal(),
                        ],
                      ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const TextInfo(
                  text:
                      "Set the degree for each question through the Field",
                ),
                const SizedBox(
                  height: 5,
                ),
                BaseTable(
                  firstChildren: [
                    for (int i = 0; i < 4; i++)
                      const BaseMyText(
                        title: "name",
                      ),
                    const BaseMyText(
                      title: "Total",
                    ),
                  ],
                  secondChildren: [
                    for (int index = 0; index < 4; index++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: BaseTextField(
                          hintText:"cloDegree",
                          onChanged: (val) {},
                        ),
                      ),
                    BaseTextField(
                      hintText: "10.0",
                      readOnly: true,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                BaseProgressButton(
                  onPressed: () {},
                  text: "Save changes",
                  buttonState: ButtonState.idle,
                ),
              ],
            ),
          );
  }
}
