import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader/ui/colors.dart';
import 'package:trader/ui/text_styles.dart';

class AppTheme {
  static defaultTheme() => ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        fontFamily: 'Satoshi',
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.background,
        ),
        tabBarTheme: TabBarTheme(
          unselectedLabelStyle: TextStyles.defaultStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.lightest,
          ),
          labelStyle: TextStyles.defaultStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.lightest,
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            color: AppColors.greyTint,
            borderRadius: BorderRadius.circular(8.r),
          ),
          dividerHeight: 0.h,
        ),
        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          border: InputBorder.none,
          hintStyle: TextStyles.defaultStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.grey),
        ),
        checkboxTheme: const CheckboxThemeData(
          checkColor: WidgetStatePropertyAll(AppColors.lightest),
          fillColor: WidgetStatePropertyAll(AppColors.green),
        ),
      );
}
