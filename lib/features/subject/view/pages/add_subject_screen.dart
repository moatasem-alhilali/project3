import 'package:report_excel/core/components/base_home_page.dart';
import 'package:report_excel/core/components/base_progress_button.dart';
import 'package:report_excel/core/components/my_text_form_field.dart';

import 'package:flutter/material.dart';
import 'package:progress_state_button/progress_button.dart';

class AddSubjectScreen extends StatelessWidget {
  AddSubjectScreen({super.key});
  TextEditingController department = TextEditingController();
  TextEditingController section = TextEditingController();
  TextEditingController creditHours = TextEditingController();
  TextEditingController classEs = TextEditingController();
  TextEditingController numberOfStudents = TextEditingController();
  TextEditingController courseTitle = TextEditingController();
  TextEditingController semester = TextEditingController();
  TextEditingController instructor = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BaseHome(
      titleAppBar: "Add Subject",
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                MyTextFormField(
                  messageValidate: "The Course Title Field Required ",
                  hintText: "Course Title",
                  controller: courseTitle,
                ),
                MyTextFormField(
                  hintText: "Department",
                  controller: department,
                  messageValidate: "The Department Field Required ",
                ),
                Row(
                  children: [
                    Expanded(
                      child: MyTextFormField(
                        hintText: "section",
                        messageValidate: "The section Field Required ",
                        keyboardType: TextInputType.number,
                        controller: section,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: MyTextFormField(
                        messageValidate: "The Credit Hours Field Required ",
                        hintText: "Credit Hours",
                        keyboardType: TextInputType.number,
                        controller: creditHours,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: MyTextFormField(
                        messageValidate: "The class Field Required ",
                        hintText: "class",
                        controller: classEs,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: MyTextFormField(
                        messageValidate: "The No. of Students Field Required ",
                        hintText: "No. of Students",
                        controller: numberOfStudents,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
                MyTextFormField(
                  messageValidate: "The Instructor name Field Required ",
                  hintText: "Instructor name",
                  controller: instructor,
                ),
                MyTextFormField(
                  messageValidate: "The Semester Field Required ",
                  hintText: "Semester",
                  controller: semester,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: BaseProgressButton(
                        buttonState: ButtonState.idle,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {}
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
