import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trader/utils/enums.dart';

import '../../bloc/orderbook/orderbook_cubit.dart';
import '../../bloc/price_info/price_info_cubit.dart';
import '../../bloc/trade_info/trade_info_cubit.dart';
import '../views/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeController createState() => HomeController();
}

class HomeController extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) => HomeView(controller: this);

  late TabController tabController;

  int currentTabIndex = 0;

  String currentChartTime = '1m';

  String orderDepth = '5';

  bool isLineChart = true;

  OrderType orderType = OrderType.bidAsk;

  setOrderDepth(String value) {
    context.read<OrderbookCubit>().onConnect(symbol: value);
    orderDepth = value;
    setState(() {});
  }

  setOrderType(OrderType value) {
    orderType = value;
    setState(() {});
  }

  setLineChartType(bool value) {
    isLineChart = value;
    setState(() {});
  }

  setCurrentChartTime(String time) {
    context.read<PriceInfoCubit>().onConnect(symbol: time);
    currentChartTime = time;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this)
      ..addListener(() {
        currentTabIndex = tabController.index;
        setState(() {});
      });
    context.read<TradeInfoCubit>().onConnect();
    context.read<PriceInfoCubit>().onConnect();
    context.read<OrderbookCubit>().onConnect();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
