import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader/ui/colors.dart';
import 'package:trader/utils/app_modals.dart';

import '../../components/app_text.dart';
import '../../ui/text_styles.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: REdgeInsets.only(top: 0, left: 16, right: 16, bottom: 16),
          decoration: const BoxDecoration(
            color: AppColors.greyTint,
          ),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 32.h,
                  child: ElevatedButton(
                    onPressed: () => AppModals.tradeModal(context, isBuy: true),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    child: AppText(
                      text: "Buy",
                      style: TextStyles.defaultStyle(
                        color: AppColors.lightest,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        useGoogleFont: true,
                      ),
                    ),
                  ),
                ),
              ),
              16.w.widthBox,
              Expanded(
                child: SizedBox(
                  height: 32.h,
                  child: ElevatedButton(
                    onPressed: () =>
                        AppModals.tradeModal(context, isBuy: false),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    child: AppText(
                      text: "Sell",
                      style: TextStyles.defaultStyle(
                        color: AppColors.lightest,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        useGoogleFont: true,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        16.h.heightBox,
      ],
    );
  }
}
