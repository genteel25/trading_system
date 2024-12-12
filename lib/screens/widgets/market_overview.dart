import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trader/bloc/trade_info/trade_info_cubit.dart';
import 'package:trader/utils/extensions.dart';

import '../../components/app_text.dart';
import '../../ui/colors.dart';
import '../../ui/text_styles.dart';
import 'market_dynamics.dart';
import 'stacked_image.dart';

class MarketOverviewWidget extends StatelessWidget {
  const MarketOverviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(
        color: AppColors.greyTint,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const StackedImage(),
              4.w.widthBox,
              AppText(
                // text: "BTC/USDT",
                text: "????/????",
                style: TextStyles.defaultStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    useGoogleFont: true),
              ),
              16.w.widthBox,
              SvgPicture.asset("assets/svgs/arrow_down.svg"),
              18.w.widthBox,
              BlocBuilder<TradeInfoCubit, TradeInfoState>(
                builder: (context, state) {
                  return state.whenOrNull(
                        success: (tradeInfo, previousPrice, _, a, b, c) =>
                            AppText(
                          text:
                              "\$${tradeInfo.currentPrice?.toFixedDecimal(2).separateWithComma()}",
                          style: TextStyles.defaultStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: (tradeInfo.currentPrice?.toFixedDecimal(2) ??
                                        "0.0")
                                    .checkIfGreaterThanAnother(previousPrice)
                                ? AppColors.green
                                : AppColors.red,
                          ),
                        ),
                      ) ??
                      AppText(
                        text: "\$0.00",
                        style: TextStyles.defaultStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey,
                        ),
                      );
                },
              ),
            ],
          ).paddingSymmetric(horizontal: 16.w),
          18.h.heightBox,
          SizedBox(
            height: 48.h,
            child: ListView.separated(
              padding: REdgeInsets.symmetric(horizontal: 16),
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => MarketDynamicsWidget(
                marketDynamics: switch (index) {
                  0 => MarketDynamics.change,
                  1 => MarketDynamics.high,
                  2 => MarketDynamics.low,
                  _ => MarketDynamics.volume
                },
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 48.h,
                child: VerticalDivider(
                  width: 32.w,
                  color: AppColors.blackTint.withOpacity(0.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
