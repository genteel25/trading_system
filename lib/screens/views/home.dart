import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader/components/app_text.dart';
import 'package:trader/components/custom_sliver_delegate.dart';
import 'package:trader/screens/widgets/appbar.dart';
import 'package:trader/screens/widgets/chart.dart';
import 'package:trader/ui/app_strings.dart';
import 'package:trader/ui/text_styles.dart';
import '../../ui/colors.dart';
import '../controllers/home.dart';
import '../widgets/ask_order.dart';
import '../widgets/bid_order.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/chart_time_pill copy.dart';
import '../widgets/market_overview.dart';
import '../widgets/orderbook_header.dart';
import '../widgets/orderbook_tool.dart';
import '../widgets/popup_menu.dart';
import '../widgets/spread_order.dart';
import 'stateless_view.dart';

class HomeView extends StatelessView<HomeScreen, HomeController> {
  const HomeView({super.key, required super.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 68.h),
        child: const CustomAppBar(),
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, isScrolled) => [
            SliverPadding(
              padding: REdgeInsets.only(top: 8.h),
            ),
            const SliverToBoxAdapter(
              child: MarketOverviewWidget(),
            ),
            SliverPadding(
              padding: REdgeInsets.only(top: 8.h),
            ),
            SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: SliverPersistentDelegate(
                minHeight: 65.h,
                maxHeight: 65.h,
                child: Container(
                  width: double.infinity,
                  padding: REdgeInsets.only(top: 16),
                  color: AppColors.greyTint,
                  child: Column(
                    children: [
                      Container(
                        margin: REdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: AppColors.background,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: TabBar(
                          controller: controller.tabController,
                          indicatorPadding: REdgeInsets.all(3),
                          tabs: const [
                            Tab(
                              text: AppStrings.CHARTS,
                            ),
                            Tab(
                              text: AppStrings.ORDERBOOK,
                            ),
                            Tab(
                              text: AppStrings.RECENT_TRADES,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
          body: Container(
            width: double.infinity,
            padding: REdgeInsets.only(bottom: 16, top: 16),
            color: AppColors.greyTint,
            child: TabBarView(
              controller: controller.tabController,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 28.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: REdgeInsets.symmetric(horizontal: 16),
                        children: [
                          const AppText(text: "Time").alignAtCenter(),
                          4.w.widthBox,
                          ChartTimePill(
                            title: '1m',
                            currentChartTime: controller.currentChartTime,
                          ).onTap(() => controller.setCurrentChartTime('1m')),
                          ChartTimePill(
                            title: '1h',
                            currentChartTime: controller.currentChartTime,
                          ).onTap(() => controller.setCurrentChartTime('1h')),
                          ChartTimePill(
                            title: '2h',
                            currentChartTime: controller.currentChartTime,
                          ).onTap(() => controller.setCurrentChartTime('2h')),
                          ChartTimePill(
                            title: '4h',
                            currentChartTime: controller.currentChartTime,
                          ).onTap(() => controller.setCurrentChartTime('4h')),
                          ChartTimePill(
                            title: '1D',
                            currentChartTime: controller.currentChartTime,
                          ).onTap(() => controller.setCurrentChartTime('1d')),
                          ChartTimePill(
                            title: '1W',
                            currentChartTime: controller.currentChartTime,
                          ).onTap(() => controller.setCurrentChartTime('1w')),
                          ChartTimePill(
                            title: '1M',
                            currentChartTime: controller.currentChartTime,
                          ).onTap(() => controller.setCurrentChartTime('1M')),
                          8.w.widthBox,
                          PopupWidget(
                            isLineChart: controller.isLineChart,
                            setLineChartType: () =>
                                controller.setLineChartType(true),
                            setBarChartType: () =>
                                controller.setLineChartType(false),
                          ),
                        ],
                      ),
                    ),
                    CustomKChartWidget(isLineChart: controller.isLineChart),
                  ],
                ),
                Column(
                  children: [
                    OrderbookToolWidget(
                      orderType: controller.orderType,
                      setOrderType: (value) => controller.setOrderType(value),
                      orderDepth: controller.orderDepth,
                      setOrderDepth: (value) => controller.setOrderDepth(value),
                    ),
                    12.h.heightBox,
                    const OrderbookHeaderWidget(),
                    8.h.heightBox,
                    AskOrderWidget(
                      orderType: controller.orderType,
                      orderDepth: controller.orderDepth,
                    ),
                    24.h.heightBox,
                    SpreadOrderWidget(orderType: controller.orderType),
                    24.h.heightBox,
                    BidOrderWidget(
                      orderType: controller.orderType,
                      orderDepth: controller.orderDepth,
                    ),
                  ],
                ).paddingSymmetric(horizontal: 16.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      text: "No Recent Trades",
                      style: TextStyles.defaultStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.lightest,
                      ),
                    ),
                    8.h.heightBox,
                    AppText(
                      text:
                          "You do not have any recent trades, You can click on the buy and sell button to start trading",
                      textAlign: TextAlign.center,
                      style: TextStyles.defaultStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.lightest,
                      ),
                    ).paddingSymmetric(horizontal: 32.w),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
