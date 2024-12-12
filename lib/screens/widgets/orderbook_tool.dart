import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trader/components/app_text.dart';
import 'package:trader/ui/colors.dart';

import '../../ui/text_styles.dart';
import '../../utils/enums.dart';

class OrderbookToolWidget extends StatelessWidget {
  const OrderbookToolWidget({
    super.key,
    required this.orderType,
    required this.setOrderType,
    required this.orderDepth,
    required this.setOrderDepth,
  });

  final OrderType orderType;
  final Function setOrderType;
  final String orderDepth;
  final Function setOrderDepth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: REdgeInsets.all(11),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            color: orderType == OrderType.bidAsk ? AppColors.pillColor : null,
          ),
          child: SvgPicture.asset("assets/svgs/bid_ask.svg"),
        ).onTap(() => setOrderType(OrderType.bidAsk)),
        Container(
          padding: REdgeInsets.all(11),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            color: orderType == OrderType.bid ? AppColors.pillColor : null,
          ),
          child: SvgPicture.asset("assets/svgs/bid.svg"),
        ).onTap(() => setOrderType(OrderType.bid)),
        Container(
          padding: REdgeInsets.all(11),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            color: orderType == OrderType.ask ? AppColors.pillColor : null,
          ),
          child: SvgPicture.asset("assets/svgs/ask.svg"),
        ).onTap(() => setOrderType(OrderType.ask)),
        const Spacer(),
        PopupMenuButton(
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
          style: const ButtonStyle(
              padding: WidgetStatePropertyAll(EdgeInsets.zero)),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.r),
              side: BorderSide(color: AppColors.blackTint, width: 0.3.w)),
          child: Container(
            padding: REdgeInsets.symmetric(horizontal: 8, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
              color: AppColors.pillColor,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText(
                  text: switch (orderDepth) {
                    "5" => "5",
                    "10" => "10",
                    _ => "20"
                  },
                  style: TextStyles.defaultStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.lightest),
                ),
                14.w.widthBox,
                SvgPicture.asset("assets/svgs/arrow_down.svg"),
              ],
            ),
          ),
          // Row(
          //   children: [

          //     switch (isLineChart) {
          //       true => Icon(
          //           Icons.line_axis_sharp,
          //           color: AppColors.lightest,
          //           size: 16.sp,
          //         ),
          //       _ => Icon(
          //           Icons.graphic_eq_outlined,
          //           color: AppColors.lightest,
          //           size: 16.sp,
          //         ),
          //     },

          //   ],
          // ),
          itemBuilder: (context) => [
            PopupMenuItem(
              height: 36.h,
              onTap: () => setOrderDepth("5"),
              child: const AppText(text: "5"),
            ),
            PopupMenuItem(
              height: 36.h,
              onTap: () => setOrderDepth("10"),
              child: const AppText(text: "10"),
            ),
            PopupMenuItem(
              height: 36.h,
              onTap: () => setOrderDepth("20"),
              child: const AppText(text: "20"),
            ),
          ],
        ),
      ],
    );
  }
}
