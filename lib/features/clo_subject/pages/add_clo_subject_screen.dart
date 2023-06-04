import 'package:report_excel/core/components/base_home_page.dart';
import 'package:report_excel/core/components/base_progress_button.dart';
import 'package:report_excel/core/components/my_text_form_field.dart';
import 'package:report_excel/core/resources/size_config.dart';
import 'package:report_excel/features/base/subjects/pages/add_screen/add_quiz_screen.dart';


import 'package:flutter/material.dart';
import 'package:progress_state_button/progress_button.dart';

class AddCloSubjectScreen extends StatelessWidget {
  AddCloSubjectScreen({
    super.key,
  });
 
  TextEditingController cloDes = TextEditingController();
  TextEditingController knowledgeController = TextEditingController();
  TextEditingController skillsController = TextEditingController();
  TextEditingController valueController = TextEditingController();
  int? knowledge;
  int? skills;
  int? value;
  final _formKey = GlobalKey<FormState>();

  List<int> itemsKnowledge = [1, 2, 3, 4, 5];
  List<int> itemsSkills = [1, 2, 3, 4, 5];
  List<int> itemsValues = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return BaseHome(
      titleAppBar: "Add a new Clo",
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: MyTextFormField(
                hintText: "clo Description..",
                controller: cloDes,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: MyTextFormField(
                    readOnly: true,
                    height: SizeConfig.blockSizeVertical! * 8,
                    suffixIcon: PopupMenuButtonCustomAdded(
                      onSelected: (val) {
                        knowledge = val;
                        knowledgeController.text = val.toString();
                      },
                      items: itemsKnowledge,
                    ),
                    hintText: "Knowledge ",
                    controller: knowledgeController,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),

                //total
                Expanded(
                  child: MyTextFormField(
                    readOnly: true,
                    height: SizeConfig.blockSizeVertical! * 8,
                    suffixIcon: PopupMenuButtonCustomAdded(
                      onSelected: (val) {
                        skills = val;
                        skillsController.text = val.toString();

                      },
                      items: itemsSkills,
                    ),
                    hintText: "Skills",
                    controller: skillsController,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: MyTextFormField(
                    controller: valueController,
                    hintText: "Count Value",
                    readOnly: true,
                    suffixIcon: PopupMenuButtonCustomAdded(
                      onSelected: (val) {
                        value = val;
                        valueController.text = val.toString();

                      },
                      items: itemsValues,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            BaseProgressButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                
                }
              },
              buttonState:  ButtonState.idle,
            ),
          ],
        ),
      ),
    );
  }
}
