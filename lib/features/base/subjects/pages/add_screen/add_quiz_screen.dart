import 'package:report_excel/core/components/base_home_page.dart';
import 'package:report_excel/core/components/base_progress_button.dart';
import 'package:report_excel/core/components/my_text_form_field.dart';
import 'package:report_excel/core/resources/assets_fonts.dart';
import 'package:report_excel/core/resources/size_config.dart';
import 'package:report_excel/core/utils/dark_mode.dart';
import 'package:flutter/material.dart';
import 'package:progress_state_button/progress_button.dart';

class AddQuizScreen extends StatelessWidget {
  AddQuizScreen({super.key});

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
      titleAppBar: "Add quiz",
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
                hintText: "name of new quiz",
                controller: nameController,
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
                        numberController.text = val.toString();
                        number = val;
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

class PopupMenuButtonCustomAdded extends StatefulWidget {
  PopupMenuButtonCustomAdded({
    super.key,
    this.index,
    required this.items,
    this.onSelected,
  });
  int? index;
  final List<int> items;
  void Function(int)? onSelected;

  @override
  State<PopupMenuButtonCustomAdded> createState() =>
      _PopupMenuButtonCustomAddedState();
}

class _PopupMenuButtonCustomAddedState
    extends State<PopupMenuButtonCustomAdded> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      elevation: 0,
      position: PopupMenuPosition.under,
      onSelected: widget.onSelected,
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<int>>[
          for (int i = 0; i < widget.items.length; i++)
            PopupMenuItem<int>(
              enabled: true,
              onTap: () {
                setState(() {});
                widget.index = widget.items[i];
              },
              value: widget.items[i],
              child: Text(
                "${widget.items[i]}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: AssetsFonts.InterRegular,
                ),
              ),
            ),
        ];
      },
      tooltip: "chose the number!",
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: ColorsManager.backGround,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: const FittedBox(
        child: Icon(
          Icons.arrow_drop_down_outlined,
          color: Color.fromARGB(255, 200, 200, 200),
          size: 35,
        ),
      ),
    );
  }
}
