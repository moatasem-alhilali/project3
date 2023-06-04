import 'package:report_excel/core/components/base_bottom_sheet.dart';
import 'package:report_excel/core/components/base_item.dart';
import 'package:report_excel/features/base/subjects/pages/base_quiz_subject_screen.dart';
import 'package:report_excel/features/clo_subject/pages/clo_subject_screen.dart';
import 'package:report_excel/features/students/view/pages/home_students_screen.dart';
import 'package:report_excel/features/subject/models/subject_model.dart';
import 'package:report_excel/features/subject/view/pages/doctor_subject_screen.dart';

import '../../../../core/utils/export_subject.dart';

class BodyViewSubject extends StatefulWidget {
  BodyViewSubject({super.key});

  @override
  State<BodyViewSubject> createState() => _MainItemState();
}

class _MainItemState extends State<BodyViewSubject> {
  bool isOpen = false;
  final dataSubject = SubjectModel.fakeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            for (int i = 0; i < dataSubject.length; i++)
              BaseItem(
                isSubtitle: true,
                indexQuizType: (i + 1),
                subTitle: "DR : ${dataSubject[i].instructorName}",
                title: "Course : ${dataSubject[i].courseTitle!}",
                onTap: () {
                  showBottomSheetFunction(
                    context: context,
                    child: _Item(
                      data: dataSubject[i],
                    ),
                  );
                },
              ),
          ],
        ),
      ],
    );
  }
}

class _Item extends StatelessWidget {
  _Item({
    super.key,
    required this.data,
  });
  final SubjectModel data;

  List<String> title = [
    "Students",
    "Quiz",
    "Assignment",
    "labs",
    "Mid Term Exams",
    "Final Exam",
    "Clos",
  ];
  List<String> quizType = [
    "Students",
    "quizzes",
    "assignments",
    "labs",
    "midTermExams",
    "finalExam",
    "Clos",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SubItem(
          title: "Lecturer",
          onTap: () {
            NavigatorManager.navigateTo(
              context: context,
              page: DoctorSubjectScreen(),
            );
          },
        ),
        for (int i = 0; i < title.length; i++)
          //students
         SubItem(
            title: title[i],
            onTap: () {
              if (title[i] == "Students") {
                NavigatorManager.navigateTo(
                  context: context,
                  page: const HomeStudentsScreen(
                  ),
                );
              }

              //clo
              else if (title[i] == "Clos") {
                NavigatorManager.navigateTo(
                  context: context,
                  page: CloSubjectScreen(),
                );
              } else {
                NavigatorManager.navigateTo(
                  context: context,
                  page: BaseQuizSubjectScreen(
                    nameCollectionSection: quizType[i],
                  ),
                );
              }
            },
          ),
      ],
    );
  }
}
