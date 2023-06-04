import 'package:report_excel/core/components/base_home_page.dart';
import 'package:report_excel/core/components/my_text_form_field.dart';


import 'package:flutter/material.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';

class AddStudentScreen extends StatelessWidget {
  AddStudentScreen({super.key});

  TextEditingController name = TextEditingController();
  TextEditingController id = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BaseHome(
      titleAppBar: "Add a new Student ",
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyTextFormField(
                  controller: name,
                  hintText: "name",
                ),
                MyTextFormField(
                  hintText: "id",
                  controller: id,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 15,
                ),
                ProgressButton.icon(
                  iconedButtons: {
                    //
                    ButtonState.idle: IconedButton(
                      text: "Create students",
                      icon: const Icon(Icons.send, color: Colors.white),
                      color: Colors.deepPurple.shade500,
                    ),
                    //
                    ButtonState.loading: IconedButton(
                      text: "Loading",
                      color: Colors.deepPurple.shade700,
                    ),
                    //
                    ButtonState.fail: IconedButton(
                      text: "Failed",
                      icon: const Icon(Icons.cancel, color: Colors.white),
                      color: Colors.red.shade300,
                    ),
                    //
                    ButtonState.success: IconedButton(
                      text: "Success",
                      icon: const Icon(
                        Icons.check_circle,
                        color: Colors.white,
                      ),
                      color: Colors.green.shade400,
                    )
                  },
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      if (id.text.length == 9) {}
                    }
                    //
                  },
                  state:  ButtonState.idle,
                ),
              ],
            ),
          )),
    );
  }
}
