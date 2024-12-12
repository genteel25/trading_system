import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../ui/colors.dart';

class PopupWidget extends StatelessWidget {
  const PopupWidget({
    super.key,
    required this.isLineChart,
    required this.setLineChartType,
    required this.setBarChartType,
  });

  final bool isLineChart;
  final VoidCallback setLineChartType;
  final VoidCallback setBarChartType;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      position: PopupMenuPosition.under,
      padding: EdgeInsets.zero,
      splashRadius: 8.r,
      elevation: 8,
      clipBehavior: Clip.antiAlias,
      surfaceTintColor: AppColors.greyTint,
      shadowColor: AppColors.background.withOpacity(0.4),
      menuPadding: EdgeInsets.zero,
      color: AppColors.greyTint,
      offset: Offset(-0, 4.h),
      style:
          const ButtonStyle(padding: WidgetStatePropertyAll(EdgeInsets.zero)),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.r),
          side: BorderSide(color: AppColors.blackTint, width: 0.3.w)),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/svgs/arrow_down.svg",
            colorFilter:
                const ColorFilter.mode(AppColors.grey, BlendMode.srcIn),
          ),
          8.5.w.widthBox,
          SizedBox(
            height: 32.h,
            child: VerticalDivider(
              // width: 1.w,
              thickness: 1.w,
              color: AppColors.blackTint.withOpacity(0.5),
            ),
          ),
          switch (isLineChart) {
            true => Icon(
                Icons.line_axis_sharp,
                color: AppColors.lightest,
                size: 16.sp,
              ),
            _ => Icon(
                Icons.graphic_eq_outlined,
                color: AppColors.lightest,
                size: 16.sp,
              ),
          },
          SizedBox(
            height: 32.h,
            child: VerticalDivider(
              // width: 1.w,
              thickness: 1.w,
              color: AppColors.blackTint.withOpacity(0.5),
            ),
          ),
        ],
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          height: 36.h,
          onTap: setBarChartType,
          child: const Icon(
            Icons.graphic_eq_outlined,
            color: AppColors.lightest,
          ),
        ),
        PopupMenuItem(
            height: 36.h,
            onTap: setLineChartType,
            padding: REdgeInsets.only(left: 8.w, right: 8.w),
            child: const Icon(
              Icons.line_axis_sharp,
              color: AppColors.lightest,
            )),
      ],
    );
  }
}
