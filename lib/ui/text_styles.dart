import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trader/ui/colors.dart';

class TextStyles {
  static defaultStyle(
          {Color? color,
          double? fontSize,
          FontWeight? fontWeight,
          TextDecoration? textDecoration,
          bool? useGoogleFont,
          double? height}) =>
      useGoogleFont != null
          ? GoogleFonts.inter(
              fontSize: fontSize ?? 18.sp,
              fontWeight: fontWeight ?? FontWeight.w600,
              decoration: textDecoration,
              color: color ?? AppColors.lightest,
              height: height,
            )
          : TextStyle(
              fontFamily: 'Satoshi',
              fontSize: fontSize ?? 18.sp,
              fontWeight: fontWeight ?? FontWeight.w600,
              decoration: textDecoration,
              color: color ?? AppColors.lightest,
              height: height,
            );
}
