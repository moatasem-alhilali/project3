import 'package:report_excel/core/resources/assets_fonts.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ColorsManager.main,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),

    iconTheme: const IconThemeData(
      color: Colors.white,
      size: 35,
    ),

    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Colors.green,
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorsManager.main,
      prefixStyle: const TextStyle(
        color: Colors.white,
      ),
      prefixIconColor: Colors.white,
      iconColor: Colors.white,
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Colors.grey,
        ),
      ),
      errorStyle: const TextStyle(
        color: Colors.redAccent,
        fontFamily: AssetsFonts.InterRegular,
      ),
    ),

    fontFamily: AssetsFonts.InterMedium,

    scaffoldBackgroundColor: const Color(0xff192028),

    //
    textTheme: const TextTheme(
      //display Small

      displaySmall: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontFamily: AssetsFonts.InterMedium,
        fontWeight: FontWeight.w500,
        overflow: TextOverflow.ellipsis,
      ),
      displayMedium: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontFamily: AssetsFonts.InterMedium,
        fontWeight: FontWeight.w500,
        overflow: TextOverflow.ellipsis,
      ),
      displayLarge: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontFamily: AssetsFonts.InterRegular,
        fontWeight: FontWeight.w600,
        overflow: TextOverflow.ellipsis,
      ),

      //head line Small
      headlineSmall: TextStyle(
        color: Colors.white,
        fontSize: 13,
        fontFamily: AssetsFonts.InterLight,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
      headlineMedium: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
      headlineLarge: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
      //title Small
      titleSmall: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontFamily: AssetsFonts.InterMedium,
      ),
      titleMedium: TextStyle(
        fontSize: 22,
        fontFamily: AssetsFonts.InterRegular,
        color: Colors.white,
      ),
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontFamily: AssetsFonts.InterExtraBold,
      ),
    ),
  );
}

TextStyle titleSmall(context) {
  return Theme.of(context).textTheme.titleSmall!;
}

TextStyle titleMedium(context) {
  return Theme.of(context).textTheme.titleMedium!;
}

TextStyle titleLarge(context) {
  return Theme.of(context).textTheme.titleLarge!;
}

class ColorsManager {
  static Color backGround = const Color(0xff192028);
  static Color secondBackGround = const Color(0xff292C31);
  static Color colorText = const Color(0xffA9DED8);
  static Color main = Colors.white.withOpacity(.05);
  static Color secondMain = const Color(0xff212428);
  static Color gray = const Color(0xff7d8184);
}

class ColorsPalette {
  static Color teal = const Color(0xffCDF0EA);
  static Color pink = const Color(0xffF7DBF0);
  static Color purple = const Color(0xffBEAEE2);
}
