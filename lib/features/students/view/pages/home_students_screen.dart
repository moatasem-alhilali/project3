import 'package:report_excel/core/components/base_home_page.dart';
import 'package:report_excel/core/utils/navigator_manager.dart';
import 'package:report_excel/features/students/view/pages/add_students_screen.dart';
import 'package:report_excel/features/students/view/widgets/body_view_students.dart';
import 'package:flutter/material.dart';

class HomeStudentsScreen extends StatelessWidget {
  const HomeStudentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseHome(
      titleAppBar: "All Students",
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, size: 30),
        onPressed: () {
          NavigatorManager.navigateTo(
            context: context,
            page: AddStudentScreen(),
          );
        },
      ),
      child: BodyViewStudents(),
    );
  }
}
