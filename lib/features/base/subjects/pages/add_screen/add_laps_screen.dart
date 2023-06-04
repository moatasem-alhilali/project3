import 'package:report_excel/core/components/base_home_page.dart';
import 'package:report_excel/core/components/base_progress_button.dart';
import 'package:report_excel/core/components/my_text_form_field.dart';
import 'package:report_excel/core/resources/size_config.dart';

import 'package:flutter/material.dart';
import 'package:progress_state_button/progress_button.dart';

import 'add_quiz_screen.dart';

class AddlabsScreen extends StatelessWidget {
  AddlabsScreen({super.key,});
  

  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController totalController = TextEditingController();

  int? name;
  int? number;
  int? total;
  final _formKey = GlobalKey<FormState>();
  List<int> itemsQuestion = [1, 2, 3, 4, 5];
  int currentIndex = 1;

  List<int> itemsTotal = [5, 10];
  int currentIndexTotal = 5;
  @override
  Widget build(BuildContext context) {
    return BaseHome(
      titleAppBar: "Add Lap",
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 15,
            ),
            Form(
              key: _formKey,
              child: MyTextFormField(
                controller: nameController,
                hintText: "name for a new lap",
                keyboardType: TextInputType.text,
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
                        number = val;
                        numberController.text = val.toString();
                      },
                      items: itemsQuestion,
                      index: currentIndex,
                    ),
                    controller: numberController,
                    hintText: "count question ",
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
                        totalController.text = val.toString();
                        total = val;
                        print(val);
                      },
                      items: itemsTotal,
                      index: currentIndexTotal,
                    ),
                    controller: totalController,
                    hintText: "total degree",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
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
