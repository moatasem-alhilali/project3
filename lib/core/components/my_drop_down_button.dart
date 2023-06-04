import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:report_excel/core/utils/dark_mode.dart';

class MyDropdownButton extends StatelessWidget {
  MyDropdownButton({super.key, this.deleteFun, this.cluFun});
  void Function()? deleteFun;
  void Function()? cluFun;
  bool? isClo;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        customButton: const Icon(
          Icons.more_vert,
          color: Colors.white,
        ),
        items: [
          DropdownMenuItem<String>(
            value: "Delete",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: deleteFun,
                  child: Text(
                    "Delete",
                    style: titleSmall(context),
                  ),
                ),
                const Icon(
                  Icons.delete_outline,
                  size: 22,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          DropdownMenuItem<String>(
            value: "Clo Excel",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: cluFun,
                  child: Text(
                    "Clo Excel",
                    style: titleSmall(context),
                  ),
                ),
                const Icon(
                  Icons.file_copy_rounded,
                  size: 20,
                ),
              ],
            ),
          ),
        ],
        value: selectedValue,
        onChanged: (value) {
          print(value);
        },
        dropdownStyleData: DropdownStyleData(
          width: 160,
          padding: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: ColorsManager.secondBackGround,
          ),
          elevation: 8,
          offset: const Offset(0, 8),
        ),
      ),
    );
  }
}

final List<String> items = [
  'Item1',
  'Item2',
  'Item3',
  'Item4',
];
String? selectedValue;
