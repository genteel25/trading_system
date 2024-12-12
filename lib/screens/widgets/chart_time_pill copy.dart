import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader/ui/colors.dart';

import '../../components/app_text.dart';
import '../../ui/text_styles.dart';

class ChartTimePill extends StatelessWidget {
  const ChartTimePill({
    super.key,
    required this.title,
    required this.currentChartTime,
  });

  final String title;
  final String currentChartTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: currentChartTime == title
            ? AppColors.blackTint
            : Colors.transparent,
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: AppText(
        text: title,
        style: TextStyles.defaultStyle(
          color: currentChartTime == title ? Colors.white : AppColors.grey,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          height: 1.h,
        ),
      ).alignAtCenter(),
    );
  }
}
