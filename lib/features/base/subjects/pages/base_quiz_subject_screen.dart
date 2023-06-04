import 'package:report_excel/core/components/base_home_page.dart';
import 'package:report_excel/core/utils/navigator_manager.dart';
import 'package:report_excel/features/base/subjects/pages/add_screen/add_assignment_screen.dart';
import 'package:report_excel/features/base/subjects/pages/add_screen/add_laps_screen.dart';
import 'package:report_excel/features/base/subjects/pages/add_screen/add_mid_term_screen.dart';
import 'package:report_excel/features/base/subjects/widgets/base_section_subject.dart';
import 'package:report_excel/features/base/subjects/pages/add_screen/add_quiz_screen.dart';
import 'package:flutter/material.dart';

class BaseQuizSubjectScreen extends StatelessWidget {
  BaseQuizSubjectScreen({
    super.key,
    required this.nameCollectionSection,
  });

  final String nameCollectionSection;
  @override
  Widget build(BuildContext context) {
    return BaseHome(
      titleAppBar: "courseTitle",
      floatingActionButton: FloatingActionButton.extended(
        elevation: 0,
        onPressed: () async {
          _getNavigate(context);
        },
        icon: const Icon(
          Icons.add_outlined,
        ),
        label: const Text(
          "Add ss",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BaseBodyViewSectionSubject(),
      ),
    );
  }

  void _getNavigate(
    BuildContext context,
  ) {
    //labs
    if (nameCollectionSection == "labs") {
      NavigatorManager.navigateTo(
        context: context,
        page: AddlabsScreen(),
      );
    }

    //assignments
    if (nameCollectionSection == "assignments") {
      NavigatorManager.navigateTo(
        context: context,
        page: AddAssignmentScreen(),
      );
    }

    //midTermExams

    if (nameCollectionSection == "midTermExams") {
      NavigatorManager.navigateTo(
        context: context,
        page: AddMedTermScreen(),
      );
    }
    //quizzes
    if (nameCollectionSection == "quizzes") {
      NavigatorManager.navigateTo(
        context: context,
        page: AddQuizScreen(),
      );
    }
  }
}
