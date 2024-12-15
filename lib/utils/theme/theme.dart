import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_strings.dart';
class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.windows: CupertinoPageTransitionsBuilder()
        },
      ),
      disabledColor: AppColors.kBorderColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
      unselectedWidgetColor: Colors.white,
      primaryColor: AppColors.kPrimaryLight,
      fontFamily: AppStrings.fontFamily,
      colorScheme: const ColorScheme.light(
          primary: AppColors.kPrimaryColor,
          secondary: AppColors.kSecondaryLight,
          error: AppColors.kError,
          surface: AppColors.kWhite),
      appBarTheme: const AppBarTheme(
          color: AppColors.kPrimaryColor,
          elevation: 0.0,
          titleTextStyle: TextStyle(
              fontFamily: AppStrings.fontFamily,
              color: AppColors.kWhite,
              fontWeight:  FontWeight.bold
          ),
          actionsIconTheme: IconThemeData(color: AppColors.kWhite)
      ),
      scaffoldBackgroundColor: AppColors.kWhite,
      // primaryTextTheme:,
      // textTheme: ,
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.kPrimaryColor,
        textTheme: ButtonTextTheme.primary,
        height: 48,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColors.kWhite,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.kFentGrey,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.kAquaGreen,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.kAquaGreen,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
