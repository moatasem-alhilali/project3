import 'package:report_excel/core/components/base_bottom_sheet.dart';
import 'package:report_excel/core/components/base_home_page.dart';
import 'package:report_excel/core/components/base_item.dart';

import 'package:report_excel/core/resources/assets_fonts.dart';
import 'package:report_excel/core/utils/dark_mode.dart';

import 'package:report_excel/core/utils/navigator_manager.dart';
import 'package:report_excel/features/clo_subject/widgets/bottom_sheet_clo_base_data.dart';
import 'package:report_excel/features/clo_subject/widgets/bottom_sheet_clo_knowledge.dart';
import 'package:report_excel/features/clo_subject/widgets/bottom_sheet_clo_skills.dart';
import 'package:report_excel/features/clo_subject/widgets/bottom_sheet_clo_value.dart';
import 'package:report_excel/features/subject/models/clo_model.dart';
import 'package:flutter/material.dart';

import 'add_clo_subject_screen.dart';

class CloSubjectScreen extends StatelessWidget {
  CloSubjectScreen({
    super.key,
  });
  final dataClo = CloModel.fakeData;

  @override
  Widget build(BuildContext context) {
    return BaseHome(
      titleAppBar: "Clos Data",
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          NavigatorManager.navigateTo(
            context: context,
            page: AddCloSubjectScreen(),
          );
        },
        icon: Icon(
          Icons.add,
          color: ColorsManager.gray,
        ),
        label: Text(
          "Add Clo",
          style: TextStyle(
            color: ColorsManager.gray,
            fontSize: 18,
            fontFamily: AssetsFonts.InterMedium,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < dataClo.length; i++)
            BaseItem(
              indexQuizType: i + 1,
              title: "title!",
              onTap: () {
                showBottomSheetFunction(
                  context: context,
                  child: Column(
                    children: [
                      _BaseItem(
                        counter: "1",
                        title: "base data".toUpperCase(),
                        onTap: () {
                          showBottomSheetFunction(
                            context: context,
                            child: BottomSheetCloBaseData(),
                          );
                        },
                      ),

                      //Knowledge
                      _BaseItem(
                        counter: "2",
                        title: "Knowledge",
                        onTap: () {
                          showBottomSheetFunction(
                            context: context,
                            child: BottomSheetCloKnowledge(),
                          );
                        },
                      ),
                      _BaseItem(
                        counter: "3",
                        title: "Skills",
                        onTap: () {
                          showBottomSheetFunction(
                            context: context,
                            child: BottomSheetCloSKills(),
                          );
                        },
                      ),
                      _BaseItem(
                        counter: "4",
                        title: "Values",
                        onTap: () {
                          showBottomSheetFunction(
                            context: context,
                            child: BottomSheetCloValue(),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
              onTapDelete: () {},
            ),
        ],
      ),
    );
  }
}

class _BaseItem extends StatelessWidget {
  _BaseItem({
    super.key,
    this.onTap,
    required this.title,
    required this.counter,
  });
  void Function()? onTap;
  final String title;
  final String counter;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: SubItem(
        onTap: onTap,
        title: title,
      ),
    );
  }
}
