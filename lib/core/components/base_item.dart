import 'package:report_excel/core/components/my_drop_down_button.dart';
import 'package:report_excel/core/resources/assets_fonts.dart';
import 'package:report_excel/core/utils/dark_mode.dart';
import 'package:flutter/material.dart';

//

class BaseItem extends StatelessWidget {
  void Function()? onTapMore;
  String? title;
  final bool isSubtitle;
  String? subTitle;
  int? indexQuizType;
  void Function()? onTapDelete;
  void Function()? onTap;
  void Function()? onTapClo;

  BaseItem({
    super.key,
    this.onTapMore,
    this.title,
    this.isSubtitle = false,
    this.subTitle,
    this.onTapDelete,
    this.onTap,
    this.indexQuizType,
    this.onTapClo,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: AnimatedContainer(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        padding: const EdgeInsets.all(20),
        curve: Curves.ease,
        duration: const Duration(seconds: 2),
        decoration: BoxDecoration(
          color: ColorsManager.main,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    MyDropdownButton(
                      deleteFun: onTapDelete,
                      cluFun: onTapClo,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title ?? "",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: AssetsFonts.InterRegular,
                          ),
                        ),
                        isSubtitle
                            ? Text(
                                subTitle ?? "",
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 96, 94, 94),
                                  fontSize: 14,
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  child: Text("$indexQuizType"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//
class SubItem extends StatelessWidget {
  SubItem({
    super.key,
    this.onTap,
    this.subTitle,
    this.title,
    this.widget,
    this.backGroundColor,
  });
  void Function()? onTap;
  String? title;
  Widget? widget;
  String? subTitle;
  Color? backGroundColor;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return InkWell(
      enableFeedback: true,
      onTap: onTap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(w / 30),
        margin: const EdgeInsets.symmetric(vertical: 4),
        width: w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backGroundColor ?? ColorsManager.backGround,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title ?? '',
              textScaleFactor: 1.2,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.circle,
                  color: Color.fromARGB(255, 210, 208, 208),
                  size: 35,
                ),
                widget ?? const SizedBox(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
