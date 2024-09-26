import 'package:flexfit/core/resources/color_manager.dart';
import 'package:flexfit/core/resources/font_manager.dart';
import 'package:flexfit/core/resources/styles_manager.dart';
import 'package:flexfit/features/onboarding/presentation/view/get_started.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primaryColor: ColorManger.primary1,
    textTheme: TextTheme(
      titleMedium: getBoldStyle(color: ColorManger.black,fontSize: FontSize.s24.sp,),
      labelLarge: getRegularStyle(color: ColorManger.gray1,fontSize: FontSize.s18.sp),
      bodySmall: getRegularStyle(color: ColorManger.gray1,fontSize: FontSize.s14.sp),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(

        foregroundColor: Colors.white,
        backgroundColor: ColorManger.primary1,
        elevation: 4,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold
        )
      ),
    ),
  );
}
