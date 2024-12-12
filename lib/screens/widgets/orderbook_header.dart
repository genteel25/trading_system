import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/app_text.dart';
import '../../ui/text_styles.dart';

class OrderbookHeaderWidget extends StatelessWidget {
  const OrderbookHeaderWidget({
    super.key,
  });
  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: "Price",
                style: TextStyles.defaultStyle(
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              AppText(
                text: "(USDT)",
                style: TextStyles.defaultStyle(
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ).alignAtCenterLeft(),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppText(
                text: "Amount",
                style: TextStyles.defaultStyle(
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              AppText(
                text: "(BTC)",
                style: TextStyles.defaultStyle(
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ).alignAtCenter(),
        ),
        Expanded(
          child: const AppText(text: "Total").alignAtCenterRight(),
        ),
      ],
    );
  }
}
