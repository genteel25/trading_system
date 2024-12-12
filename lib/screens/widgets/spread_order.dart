import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trader/utils/enums.dart';
import 'package:trader/utils/extensions.dart';

import '../../bloc/orderbook/orderbook_cubit.dart';
import '../../components/app_text.dart';
import '../../ui/colors.dart';
import '../../ui/text_styles.dart';

class SpreadOrderWidget extends StatelessWidget {
  const SpreadOrderWidget({super.key, required this.orderType});
  final OrderType orderType;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderbookCubit, OrderbookState>(
      builder: (context, state) {
        return state.whenOrNull(
              success: (data, maxBidQuantity, maxAskQuantity, maxBidPrice,
                      minAskPrice, previousMaxBidPrice) =>
                  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    text: maxBidPrice.toFixedDecimal(2).separateWithComma(),
                    style: TextStyles.defaultStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: maxBidPrice
                              .checkIfGreaterThanAnother(previousMaxBidPrice)
                          ? orderType == OrderType.bid ||
                                  orderType == OrderType.bidAsk
                              ? AppColors.green
                              : AppColors.lightest
                          : !maxBidPrice.checkIfGreaterThanAnother(
                                  previousMaxBidPrice)
                              ? orderType == OrderType.ask ||
                                      orderType == OrderType.bidAsk
                                  ? AppColors.redTint
                                  : AppColors.lightest
                              : AppColors.lightest,
                    ),
                  ),
                  8.w.widthBox,
                  SvgPicture.asset(
                    "assets/svgs/arrow_up.svg",
                    colorFilter: ColorFilter.mode(
                        maxBidPrice
                                .checkIfGreaterThanAnother(previousMaxBidPrice)
                            ? orderType == OrderType.bid ||
                                    orderType == OrderType.bidAsk
                                ? AppColors.green
                                : AppColors.lightest
                            : !maxBidPrice.checkIfGreaterThanAnother(
                                    previousMaxBidPrice)
                                ? orderType == OrderType.ask ||
                                        orderType == OrderType.bidAsk
                                    ? AppColors.redTint
                                    : AppColors.lightest
                                : AppColors.lightest,
                        BlendMode.srcIn),
                  ),
                  8.w.widthBox,
                  AppText(
                    text: minAskPrice.toFixedDecimal(2).separateWithComma(),
                    style: TextStyles.defaultStyle(
                        fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ) ??
            const SizedBox.shrink();
      },
    );
  }
}
