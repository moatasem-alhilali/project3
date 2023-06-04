import 'package:report_excel/core/components/base_bottom_sheet.dart';
import 'package:report_excel/core/components/base_home_page.dart';
import 'package:report_excel/core/components/base_item.dart';
import 'package:report_excel/core/utils/dark_mode.dart';
import 'package:report_excel/features/base/student/widgets/base_bottom_sheet_student.dart';
import 'package:flutter/material.dart';

class BaseStudentSection extends StatelessWidget {
  const BaseStudentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BaseHome(
      titleAppBar: "adada",
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            for (int i = 0; i < 4; i++)
              SubItem(
                backGroundColor: ColorsManager.main,
                title: "dataSectionType",
                onTap: () {
                  showBottomSheetFunction(
                    context: context,
                    child: BaseBottomSheetStudent(),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
