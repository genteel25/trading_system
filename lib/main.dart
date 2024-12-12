import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader/bloc/price_info/price_info_cubit.dart';
import 'package:trader/router/app_routes.dart';
import 'package:trader/ui/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/orderbook/orderbook_cubit.dart';
import 'bloc/trade_info/trade_info_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TradeInfoCubit(),
        ),
        BlocProvider(
          create: (context) => PriceInfoCubit(),
        ),
        BlocProvider(
          create: (context) => OrderbookCubit(),
        ),
      ],
      child: ScreenUtilInit(
          designSize: const Size(390, 815),
          builder: (context, child) {
            return MaterialApp.router(
              title: 'Binance Websocket App',
              debugShowCheckedModeBanner: false,
              theme: AppTheme.defaultTheme(),
              routerConfig: router,
            );
          }),
    );
  }
}
