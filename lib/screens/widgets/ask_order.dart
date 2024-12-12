import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader/utils/enums.dart';
import 'package:trader/utils/extensions.dart';

import '../../bloc/orderbook/orderbook_cubit.dart';
import '../../components/app_text.dart';
import '../../ui/colors.dart';
import '../../ui/text_styles.dart';

class AskOrderWidget extends StatelessWidget {
  const AskOrderWidget({
    super.key,
    required this.orderType,
    required this.orderDepth,
  });
  final OrderType orderType;
  final String orderDepth;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderbookCubit, OrderbookState>(
      builder: (context, state) {
        return state.whenOrNull(
              success: (data, maxBidQuantity, maxAskQuantity, maxBidPrice,
                      minAskPrice, previousMaxBidPrice) =>
                  Expanded(
                // height: switch (orderDepth) {
                //   '10' => 320.h,
                //   _ => 160.h,
                // },
                child: ListView.separated(
                  // physics: const NeverScrollableScrollPhysics(),
                  primary: false,
                  padding: REdgeInsets.only(top: 8.h, bottom: 0.h),
                  // shrinkWrap: true,
                  itemBuilder: (context, index) => SizedBox(
                    height: 28.h,
                    child: Stack(
                      fit: StackFit.passthrough,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              color: orderType == OrderType.ask ||
                                      orderType == OrderType.bidAsk
                                  ? AppColors.red.withOpacity(0.2)
                                  : null,
                              height: 28.h,
                              width: double.parse(
                                      data['asks'][index].quantity.toString()) /
                                  double.parse(maxAskQuantity) *
                                  (MediaQuery.sizeOf(context).width - 32.w),
                            ).alignAtCenterRight(),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: AppText(
                                text:
                                    "${data['asks'][index].price?.toString().toFixedDecimal(2).separateWithComma()}",
                                style: TextStyles.defaultStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: orderType == OrderType.ask ||
                                            orderType == OrderType.bidAsk
                                        ? AppColors.redTint
                                        : AppColors.lightest),
                              ).alignAtCenterLeft(),
                            ),
                            Expanded(
                              child: AppText(
                                text:
                                    "${data['asks'][index].quantity?.toString().toFixedDecimal(2).separateWithComma()}",
                                style: TextStyles.defaultStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.lightest),
                              ).alignAtCenter(),
                            ),
                            Expanded(
                              child: AppText(
                                text:
                                    "${data['asks'][index].price?.toString().calculatePriceQuantityProduct(data['asks'][index].quantity?.toString() ?? "0").toString().toFixedDecimal(2).separateWithComma()}",
                                style: TextStyles.defaultStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.lightest),
                              ).alignAtCenterRight(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => 4.h.heightBox,
                  itemCount: data['bids'].length,
                ),
              ),
            ) ??
            const SizedBox.shrink();
      },
    );
  }
}
