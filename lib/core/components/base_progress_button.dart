import 'package:report_excel/core/resources/assets_fonts.dart';
import 'package:report_excel/core/resources/size_config.dart';
import 'package:flutter/material.dart';
import 'package:progress_state_button/progress_button.dart';

class BaseProgressButton extends StatelessWidget {
  const BaseProgressButton({
    super.key,
    required this.onPressed,
    this.buttonState = ButtonState.idle,
    this.text = "create",
  });
  final String text;
  final Function onPressed;
  final ButtonState buttonState;
  @override
  Widget build(BuildContext context) {
    return ProgressButton(
      height: SizeConfig.blockSizeVertical! * 8,
      padding: const EdgeInsets.all(8),
      radius: 15.0,
      stateWidgets: {
        ButtonState.idle: Text(
          text.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontFamily: AssetsFonts.InterMedium,
          ),
        ),
        ButtonState.loading: Text(
          "Loading".toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontFamily: AssetsFonts.InterMedium,
          ),
        ),
        ButtonState.fail: Text(
          "Fail".toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontFamily: AssetsFonts.InterMedium,
          ),
        ),
        ButtonState.success: Text(
          "Success".toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontFamily: AssetsFonts.InterMedium,
          ),
        )
      },
      stateColors:const {
        ButtonState.idle: Color.fromARGB(255, 130, 37, 171),
        ButtonState.loading: Color.fromARGB(255, 10, 2, 240),
        ButtonState.fail: Color.fromARGB(255, 148, 16, 16),
        ButtonState.success: Color.fromARGB(255, 22, 183, 31),
      },
      onPressed: onPressed,
      state: buttonState,
    );
  }
}
