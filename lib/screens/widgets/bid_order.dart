import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader/utils/extensions.dart';

import '../../bloc/orderbook/orderbook_cubit.dart';
import '../../components/app_text.dart';
import '../../ui/colors.dart';
import '../../ui/text_styles.dart';
import '../../utils/enums.dart';

class BidOrderWidget extends StatelessWidget {
  const BidOrderWidget({
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
                // height: 200.h,
                child: ListView.separated(
                  // physics: const NeverScrollableScrollPhysics(),
                  padding: REdgeInsets.only(top: 0.h, bottom: 8.h),
                  primary: false,
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
                              color: orderType == OrderType.bid ||
                                      orderType == OrderType.bidAsk
                                  ? AppColors.opaqueGreen.withOpacity(0.2)
                                  : null,
                              height: 28.h,
                              width: double.parse(
                                      data['bids'][index].quantity.toString()) /
                                  double.parse(maxBidQuantity) *
                                  (MediaQuery.sizeOf(context).width - 32.w),
                            ).alignAtCenterRight(),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: AppText(
                                text:
                                    "${data['bids'][index].price?.toString().toFixedDecimal(2).separateWithComma()}",
                                style: TextStyles.defaultStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: orderType == OrderType.bid ||
                                            orderType == OrderType.bidAsk
                                        ? AppColors.bidGreen
                                        : AppColors.lightest),
                              ).alignAtCenterLeft(),
                            ),
                            Expanded(
                              child: AppText(
                                text:
                                    "${data['bids'][index].quantity?.toString().toFixedDecimal(2).separateWithComma()}",
                                style: TextStyles.defaultStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.lightest),
                              ).alignAtCenter(),
                            ),
                            Expanded(
                              child: AppText(
                                text:
                                    "${data['bids'][index].price?.toString().calculatePriceQuantityProduct(data['bids'][index].quantity?.toString() ?? "0").toString().toFixedDecimal(2).separateWithComma()}",
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
