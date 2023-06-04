import 'package:report_excel/core/components/base_home_page.dart';
import 'package:report_excel/core/components/base_progress_button.dart';
import 'package:report_excel/core/components/my_text_form_field.dart';
import 'package:report_excel/features/subject/models/subject_model.dart';

import 'package:flutter/material.dart';
import 'package:progress_state_button/progress_button.dart';

class DoctorSubjectScreen extends StatelessWidget {
  DoctorSubjectScreen({
    super.key,
  });

  TextEditingController qualification = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController instructor = TextEditingController();
  TextEditingController titleSubject = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BaseHome(
      titleAppBar: "Doctor information",
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                MyTextFormField(
                  hintText: "Lecturer name",
                  controller: instructor,
                  labelText: "DR",
                  readOnly: true,
                ),
                MyTextFormField(
                  messageValidate: "The Course Title Field Required ",
                  hintText: "Lecturer name",
                  controller: titleSubject,
                  labelText: "Course Title",
                  readOnly: true,
                ),
                MyTextFormField(
                  hintText: "Qualification",
                  labelText: "Qualification",
                  controller: qualification,
                  messageValidate: "The Department Field Required ",
                ),
                MyTextFormField(
                  labelText: "Phone number",
                  messageValidate: "The Instructor name Field Required ",
                  hintText: "Phone number",
                  controller: phoneNumber,
                ),
                MyTextFormField(
                  labelText: "Description",
                  messageValidate: "The Semester Field Required ",
                  hintText: "Description",
                  controller: description,
                ),
                const SizedBox(
                  height: 10,
                ),
                BaseProgressButton(
                  buttonState:
                       ButtonState.idle,
                  text: "Save Changes",
                  onPressed: () {
                    Map<String, dynamic> dataUpdate = {
                      "qualification": qualification.text,
                      "phoneNumber": phoneNumber.text,
                      "description": description.text,
                    };
                    if (_formKey.currentState!.validate()) {}
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
