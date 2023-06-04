import 'package:report_excel/core/components/base_bottom_sheet.dart';
import 'package:report_excel/core/components/base_item.dart';
import 'package:report_excel/core/utils/navigator_manager.dart';
import 'package:report_excel/features/students/models/student_model.dart';
import 'package:report_excel/features/base/student/pages/base_student_section.dart';
import 'package:flutter/material.dart';

class BodyViewStudents extends StatelessWidget {
  BodyViewStudents({super.key});
  final dataStudents = StudentModel.fakeData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: TextButton(
              onPressed: () {},
              child: const Text("Export Clo Excel?"),
            ),
          ),

          //
          Column(
            children: [
              for (int i = 0; i < dataStudents.length; i++)
                BaseItem(
                  indexQuizType: i + 1,
                  title: dataStudents[i].name!,
                  onTap: () {
                    showBottomSheetFunction(
                      context: context,
                      child: Item(),
                    );
                  },
                  onTapClo: () {
                    Navigator.pop(context);
                  },
                  onTapDelete: () {},
                ),
            ],
          )
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  Item({
    super.key,
  });

  List<String> item = [
    "quizzes",
    "assignments",
    "labs",
    "midTermExams",
    "finalExam",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < 5; i++) _Item(title: item[i]),
      ],
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return SubItem(
      onTap: () {
        NavigatorManager.navigateTo(
          context: context,
          page: BaseStudentSection(),
        );
      },
      title: title,
    );
  }
}
