import 'package:report_excel/core/resources/assets_fonts.dart';
import 'package:flutter/material.dart';

class MyTextFormField extends StatefulWidget {
  MyTextFormField({
    super.key,
    required this.hintText,
    this.labelText,
    this.textAlign = TextAlign.start,
    this.keyboardType,
    this.suffixIcon,
    this.height,
    this.onChanged,
    this.readOnly,
    this.controller,
    this.messageValidate,
    this.validator,
  });
  String? hintText;
  String? Function(String?)? validator;
  String? labelText;
  String? messageValidate;
  double? height;
  TextEditingController? controller;
  TextAlign? textAlign;
  Widget? suffixIcon;
  bool? readOnly;
  TextInputType? keyboardType;

  /// مراقبة إدخال النص
  final Function(String text)? onChanged;

  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        readOnly: widget.readOnly ?? false,
        inputFormatters: const [
          // FilteringTextInputFormatter.allow(RegExp(r"^\+?0[0-9]{10}$")
          //     // RegExp(r"[a-zA-Z]+|\s"),
          //     ),
        ],
        validator: (value) {
          if (value!.isEmpty) {
            return widget.messageValidate ?? "The Field Cant Be Empty";
          }
          return null;
        },
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        textDirection: TextDirection.ltr,
        style: const TextStyle(
          color: Color.fromARGB(255, 150, 149, 149),
          fontFamily: AssetsFonts.InterMedium,
        ),
        textAlign: widget.textAlign!,
        decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            fontFamily: AssetsFonts.InterMedium,
            fontSize: 18,
            color: Colors.grey,
          ),
          helperStyle: Theme.of(context).textTheme.headlineSmall,
          suffixIcon: widget.suffixIcon,
          labelStyle: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Colors.blue),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Color.fromARGB(120, 158, 158, 158),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 43, 90, 231),
            ),
          ),
        ),
        onChanged: widget.onChanged,
      ),
    );
  }
}

extension extString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp =
        RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp = RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>');
    return passwordRegExp.hasMatch(this);
  }

  bool get isNotNull {
    return this != null;
  }

  bool get isValidPhone {
    final phoneRegExp = RegExp(r"^\+?0[0-9]{10}$");
    return phoneRegExp.hasMatch(this);
  }
}
