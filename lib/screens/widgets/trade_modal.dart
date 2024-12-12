import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:enhanced_button/enhanced_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:trader/components/app_text.dart';
import 'package:trader/ui/text_styles.dart';

import '../../ui/colors.dart';

class TradeModalWidget extends StatefulWidget {
  const TradeModalWidget({
    super.key,
    required this.isBuy,
  });

  final bool isBuy;

  @override
  State<TradeModalWidget> createState() => _TradeModalWidgetState();
}

enum TradeType {
  limit(name: "Limit"),
  market(name: "Market"),
  stopLimit(name: "Stop-Limit");

  final String name;
  const TradeType({required this.name});
}

class _TradeModalWidgetState extends State<TradeModalWidget>
    with SingleTickerProviderStateMixin {
  TradeType tradeType = TradeType.limit;

  late TabController controller;

  int currentTabIndex = 0;

  @override
  void initState() {
    super.initState();
    currentTabIndex = widget.isBuy ? 0 : 1;
    controller = TabController(
        length: 2, vsync: this, initialIndex: widget.isBuy ? 0 : 1)
      ..addListener(() {
        currentTabIndex = controller.index;
        setState(() {});
      });

    ;
  }

  setTradeType(TradeType type) {
    tradeType = type;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        // height: 600.h,
        decoration: const BoxDecoration(
          color: AppColors.modalBackground,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              30.h.heightBox,
              Container(
                margin: REdgeInsets.symmetric(horizontal: 32),
                height: 42.h,
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: TabBar(
                  controller: controller,
                  indicatorPadding: REdgeInsets.all(3),
                  unselectedLabelColor: AppColors.grey,
                  indicator: BoxDecoration(
                    color: AppColors.greyTint,
                    borderRadius: BorderRadius.circular(8.r),
                    border:
                        Border.all(color: AppColors.opaqueGreen, width: 1.w),
                  ),
                  tabs: const [
                    Tab(
                      text: "Buy",
                    ),
                    Tab(
                      text: "Sell",
                    ),
                  ],
                ),
              ),
              16.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TradeTypePillWidget(
                    tradeType: tradeType,
                    actualTradeType: TradeType.limit,
                  ).onTap(() => setTradeType(TradeType.limit)),
                  TradeTypePillWidget(
                    tradeType: tradeType,
                    actualTradeType: TradeType.market,
                  ).onTap(() => setTradeType(TradeType.market)),
                  TradeTypePillWidget(
                    tradeType: tradeType,
                    actualTradeType: TradeType.stopLimit,
                  ).onTap(() => setTradeType(TradeType.stopLimit)),
                ],
              ).paddingSymmetric(horizontal: 42.w),
              if (tradeType != TradeType.market) 16.h.heightBox,
              if (tradeType != TradeType.market)
                Container(
                  padding: REdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  margin: REdgeInsets.symmetric(horizontal: 32),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: AppColors.borderColor, width: 1.w),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppText(
                            text: "Limit price",
                            style: TextStyles.defaultStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.grey,
                                height: 1.h),
                          ),
                          8.w.widthBox,
                          SvgPicture.asset("assets/svgs/info_circle.svg"),
                        ],
                      ),
                      const Spacer(),
                      IntrinsicWidth(
                        // stepWidth: 28,
                        child: SizedBox(
                            height: 24.h,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              cursorColor: Colors.grey,
                              style: TextStyles.defaultStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grey),
                              decoration: const InputDecoration(
                                hintText: "0.00",
                                isCollapsed: false,
                                isDense: true,
                              ),
                              inputFormatters: [
                                CurrencyInputFormatter(),
                                LengthLimitingTextInputFormatter(14)
                              ],
                            )),
                      ),
                      4.w.widthBox,
                      AppText(
                        text: "USD",
                        style: TextStyles.defaultStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey),
                      )
                    ],
                  ),
                ),
              16.h.heightBox,
              Container(
                padding: REdgeInsets.symmetric(horizontal: 16, vertical: 10),
                margin: REdgeInsets.symmetric(horizontal: 32),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.borderColor, width: 1.w),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppText(
                          text: "Amount",
                          style: TextStyles.defaultStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.grey,
                              height: 1.h),
                        ),
                        8.w.widthBox,
                        SvgPicture.asset("assets/svgs/info_circle.svg"),
                      ],
                    ),
                    const Spacer(),
                    IntrinsicWidth(
                      // stepWidth: 28,
                      child: SizedBox(
                          height: 24.h,
                          child: TextFormField(
                            cursorColor: Colors.grey,
                            keyboardType: TextInputType.number,
                            style: TextStyles.defaultStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.grey),
                            decoration: const InputDecoration(
                              hintText: "0.00",
                              isCollapsed: false,
                              isDense: true,
                            ),
                            inputFormatters: [
                              CurrencyInputFormatter(),
                              LengthLimitingTextInputFormatter(14)
                            ],
                          )),
                    ),
                    4.w.widthBox,
                    AppText(
                      text: "USD",
                      style: TextStyles.defaultStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey),
                    )
                  ],
                ),
              ),
              if (tradeType != TradeType.market) 16.h.heightBox,
              if (tradeType != TradeType.market)
                Container(
                  padding: REdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  margin: REdgeInsets.symmetric(horizontal: 32),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: AppColors.borderColor, width: 1.w),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppText(
                            text: "Type",
                            style: TextStyles.defaultStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.grey,
                                height: 1.h),
                          ),
                          8.w.widthBox,
                          SvgPicture.asset("assets/svgs/info_circle.svg"),
                        ],
                      ),
                      const Spacer(),
                      PopupMenuButton(
                        position: PopupMenuPosition.under,
                        style: const ButtonStyle(
                          fixedSize: WidgetStatePropertyAll(
                            Size(70, 24),
                          ),
                        ),
                        offset: Offset(0, 4.h),
                        splashRadius: 8.r,
                        elevation: 8,
                        clipBehavior: Clip.antiAlias,
                        surfaceTintColor: AppColors.greyTint,
                        shadowColor: AppColors.background.withOpacity(0.4),
                        menuPadding: EdgeInsets.zero,
                        color: AppColors.greyTint,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.r),
                            side: BorderSide(
                                color: AppColors.blackTint, width: 0.3.w)),
                        child: Row(
                          children: [
                            AppText(
                              text: "Good till Cancelled",
                              style: TextStyles.defaultStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.grey,
                                  height: 1.h),
                            ),
                            4.w.widthBox,
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: AppColors.grey,
                              size: 12.sp,
                            ),
                          ],
                        ),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            height: 36.h,
                            child: const AppText(text: "Fill or Kill"),
                          ),
                          PopupMenuItem(
                            height: 36.h,
                            child: const AppText(text: "Good till cancelled"),
                          ),
                          PopupMenuItem(
                            height: 36.h,
                            child: const AppText(text: "Good till when"),
                          ),
                        ],
                      ),
                      4.w.widthBox,
                      AppText(
                        text: "USD",
                        style: TextStyles.defaultStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey),
                      )
                    ],
                  ),
                ),
              if (tradeType != TradeType.market) 16.h.heightBox,
              if (tradeType != TradeType.market)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 24.w,
                      height: 24.h,
                      child: Checkbox(
                        value: true,
                        onChanged: (value) {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      ),
                    ),
                    4.w.widthBox,
                    AppText(
                      text: "Post only",
                      style: TextStyles.defaultStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey,
                          height: 1.h),
                    ),
                    4.w.widthBox,
                    SvgPicture.asset("assets/svgs/info_circle.svg"),
                  ],
                ).paddingSymmetric(horizontal: 32),
              16.h.heightBox,
              Row(
                children: [
                  AppText(
                    text: "Total",
                    style: TextStyles.defaultStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                    ),
                  ),
                  const Spacer(),
                  AppText(
                    text: "0.00",
                    style: TextStyles.defaultStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                    ),
                  ),
                ],
              ).paddingSymmetric(horizontal: 32),
              16.h.heightBox,
              Container(
                margin: REdgeInsets.symmetric(horizontal: 32),
                width: double.infinity,
                height: 40.h,
                child: EnhancedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r)))),
                  enhancedStyle: EnhancedButtonStyle(
                    gradient: const WidgetStatePropertyAll(
                      LinearGradient(
                        colors: [
                          Color(0xff483BEB),
                          Color(0xff7847E1),
                          Color(0xffDD568D),
                        ],
                      ),
                    ),
                  ),
                  child: AppText(
                      text: '${currentTabIndex == 0 ? "Buy" : "Sell"} ???'),
                ),
              ),
              12.h.heightBox,
              Divider(
                color: AppColors.grey.withOpacity(0.2),
                height: 0.h,
              ).paddingSymmetric(horizontal: 32),
              16.h.heightBox,
              Row(
                children: [
                  AppText(
                    text: "Total account value",
                    style: TextStyles.defaultStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                    ),
                  ),
                  const Spacer(),
                  AppText(
                    text: "NGN",
                    style: TextStyles.defaultStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                    ),
                  ),
                  4.w.widthBox,
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: AppColors.grey,
                    size: 12.sp,
                  ),
                ],
              ).paddingSymmetric(horizontal: 32),
              8.h.heightBox,
              AppText(
                text: "0.00",
                style: TextStyles.defaultStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.lightest),
              ).paddingSymmetric(horizontal: 32),
              16.h.heightBox,
              Row(
                children: [
                  AppText(
                    text: "Open Orders",
                    style: TextStyles.defaultStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                    ),
                  ),
                  const Spacer(),
                  AppText(
                    text: "Available",
                    style: TextStyles.defaultStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                    ),
                  ),
                ],
              ).paddingSymmetric(horizontal: 32),
              8.h.heightBox,
              Row(
                children: [
                  AppText(
                    text: "0.00",
                    style: TextStyles.defaultStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.lightest),
                  ),
                  const Spacer(),
                  AppText(
                    text: "0.00",
                    style: TextStyles.defaultStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.lightest),
                  ).paddingOnly(right: 0.w)
                ],
              ).paddingSymmetric(horizontal: 32),
              16.h.heightBox,
              Container(
                padding: REdgeInsets.symmetric(horizontal: 32),
                height: 40.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff2764FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      )),
                  child: AppText(
                    text: "Deposit",
                    style: TextStyles.defaultStyle(
                        color: AppColors.lightest,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              27.h.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}

class CurrencyInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String cleanedText = newValue.text.replaceAll(RegExp(r'[^\d]'), '');
    final formatter = NumberFormat('#,###.##', 'en_US');

    // If the length of cleanedText is less than 3, it means there is no fractional part.
    // In such cases, we set it to "00".
    if (cleanedText.length < 3) {
      cleanedText = cleanedText.padLeft(3, '0');
    }

    // Extract the whole number part and the fractional part (last two digits).
    String wholeNumber = cleanedText.substring(0, cleanedText.length - 2);
    String fractionalPart = cleanedText.substring(cleanedText.length - 2);

    // Format the whole number part with commas
    String formattedWholeNumber = formatter.format(int.parse(wholeNumber));

    // Combine the whole number and fractional part with a dot.
    String formattedText = '$formattedWholeNumber.$fractionalPart';

    return newValue.copyWith(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}

class TradeTypePillWidget extends StatelessWidget {
  const TradeTypePillWidget({
    super.key,
    required this.tradeType,
    required this.actualTradeType,
  });

  final TradeType tradeType;
  final TradeType actualTradeType;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: tradeType == actualTradeType ? AppColors.pillGrey : null,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: AppText(
        text: actualTradeType.name,
        style: TextStyles.defaultStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: tradeType == actualTradeType
              ? AppColors.lightest
              : AppColors.grey,
        ),
      ),
    );
  }
}
