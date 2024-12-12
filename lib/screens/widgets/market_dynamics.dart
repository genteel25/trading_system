import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trader/bloc/trade_info/trade_info_cubit.dart';
import 'package:trader/ui/text_styles.dart';
import 'package:trader/utils/extensions.dart';

import '../../components/app_text.dart';
import '../../ui/colors.dart';

enum MarketDynamics {
  change,
  high,
  low,
  volume,
}

class MarketDynamicsWidget extends StatelessWidget {
  const MarketDynamicsWidget({
    super.key,
    required this.marketDynamics,
    // required this.data,
  });
  final MarketDynamics marketDynamics;
  // final TradeInfoData data;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TradeInfoCubit, TradeInfoState>(
      builder: (context, state) {
        return state.whenOrNull(
              success: (tradeInfo, _, previousPriceChange, previousPriceHigh,
                      previousPriceLow, previousPriceVolume) =>
                  SizedBox(
                // width: 118.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                            "assets/svgs/${switch (marketDynamics) {
                          MarketDynamics.change => "clock",
                          MarketDynamics.high => "high",
                          MarketDynamics.low => "low",
                          _ => "volume",
                        }}.svg"),
                        8.w.widthBox,
                        AppText(
                          text: switch (marketDynamics) {
                            MarketDynamics.change => "24h Change",
                            MarketDynamics.high => "24h High",
                            MarketDynamics.low => "24h Low",
                            _ => "24h Volume"
                          },
                          style: TextStyles.defaultStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey,
                            // height: 1.3.h,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    AppText(
                      text: switch (marketDynamics) {
                        MarketDynamics.change =>
                          "${tradeInfo.priceChange?.toFixedDecimal(2).separateWithComma() ?? ""}${tradeInfo.priceChange?.percentageChangeInNewAndPreviousPrice(previousPriceChange)}%",
                        MarketDynamics.high =>
                          "${tradeInfo.priceHigh?.toFixedDecimal(2).separateWithComma() ?? ""}${tradeInfo.priceHigh?.percentageChangeInNewAndPreviousPrice(previousPriceHigh)}%",
                        MarketDynamics.low =>
                          "${tradeInfo.priceLow?.toFixedDecimal(2).separateWithComma() ?? ""}${tradeInfo.priceLow?.percentageChangeInNewAndPreviousPrice(previousPriceLow)}%",
                        _ =>
                          "${tradeInfo.priceVolume?.toFixedDecimal(2).separateWithComma() ?? ""}${tradeInfo.priceVolume?.percentageChangeInNewAndPreviousPrice(previousPriceVolume)}%",
                      },
                      style: TextStyles.defaultStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: switch (marketDynamics) {
                          MarketDynamics.change => (tradeInfo.priceChange
                                      ?.checkIfGreaterThanAnother(
                                          previousPriceChange) ??
                                  false)
                              ? AppColors.green
                              : AppColors.red,
                          MarketDynamics.high => (tradeInfo.priceHigh
                                      ?.checkIfGreaterThanAnother(
                                          previousPriceHigh) ??
                                  false)
                              ? AppColors.green
                              : AppColors.red,
                          MarketDynamics.low => (tradeInfo.priceLow
                                      ?.checkIfGreaterThanAnother(
                                          previousPriceLow) ??
                                  false)
                              ? AppColors.green
                              : AppColors.red,
                          MarketDynamics.high => (tradeInfo.priceVolume
                                      ?.checkIfGreaterThanAnother(
                                          previousPriceVolume) ??
                                  false)
                              ? AppColors.green
                              : AppColors.red,
                          _ => (tradeInfo.priceVolume
                                      ?.checkIfGreaterThanAnother(
                                          previousPriceVolume) ??
                                  false)
                              ? AppColors.green
                              : AppColors.red,
                        },
                        // height: 1.5.h,
                      ),
                    )
                  ],
                ),
              ),
            ) ??
            SizedBox(
              width: 118.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("assets/svgs/${switch (marketDynamics) {
                        MarketDynamics.change => "clock",
                        MarketDynamics.high => "high",
                        MarketDynamics.low => "low",
                        _ => "volume",
                      }}.svg"),
                      8.w.widthBox,
                      AppText(
                        text: switch (marketDynamics) {
                          MarketDynamics.change => "24h Change",
                          MarketDynamics.high => "24h High",
                          MarketDynamics.low => "24h Low",
                          _ => "24h Volume"
                        },
                        style: TextStyles.defaultStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey,
                          // height: 1.3.h,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  AppText(
                    text: "0.00 +0.00%",
                    style: TextStyles.defaultStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: switch (marketDynamics) {
                        MarketDynamics.change => AppColors.green,
                        _ => AppColors.grey,
                      },
                      // height: 1.5.h,
                    ),
                  )
                ],
              ),
            );
      },
    );
  }
}
