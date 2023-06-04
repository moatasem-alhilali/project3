import 'package:report_excel/core/resources/assets_fonts.dart';
import 'package:report_excel/core/utils/dark_mode.dart';
import 'package:report_excel/features/subject/models/clo_model.dart';
import 'package:report_excel/features/subject/models/count_quiz_type_model.dart';
import 'package:flutter/material.dart';

class BasePopupMenuQuizGlobal extends StatelessWidget {
  BasePopupMenuQuizGlobal({
    super.key,
    
  });
  
  //------------------------
  List<QuestionOfQuizModel>? dataQuestion;
  List<CloModel>? dataClo;
  String? docsQuiz;

  String? baseDocsIdSubject;
  int? indexQuestion;
  String val = "clo_id 3";
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PopupMenuButton(
        tooltip: "chose the clo id!",
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: ColorsManager.backGround,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onSelected: (newVal) {
          val = newVal;

        

       
        },
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry<String>>[
            for (int i = 0; i < 4; i++)
              PopupMenuItem<String>(
                enabled: true,
                onTap: () {
                  index = i;
                },
                value: "items",
                child: Text(
                "items",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: AssetsFonts.InterRegular,
                  ),
                ),
              ),
          ];
        },
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "selected",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const Icon(
                Icons.arrow_drop_down_outlined,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
