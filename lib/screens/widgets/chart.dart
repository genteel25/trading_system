import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:k_chart/flutter_k_chart.dart';

import '../../bloc/price_info/price_info_cubit.dart';
import '../../utils/app_utils.dart';

class CustomKChartWidget extends StatelessWidget {
  const CustomKChartWidget({super.key, required this.isLineChart});
  final bool isLineChart;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<PriceInfoCubit, PriceInfoState>(
        builder: (context, state) {
          return state.whenOrNull(
                success: (priceList) => KChartWidget(
                  priceList,
                  xFrontPadding: 50,
                  isTapShowInfoDialog: true,
                  CustomChartStyle(),
                  ChartColor(),
                  isTrendLine: false,
                  isLine: isLineChart,
                  timeFormat: const ['dd', '-', 'mm', '-', 'yyyy'],
                  verticalTextAlignment: VerticalTextAlignment.right,
                ),
              ) ??
              KChartWidget(
                [],
                CustomChartStyle(),
                ChartColor(),
                isTrendLine: true,
                isLine: true,
                timeFormat: ['dd', '-', 'mm', '-', 'yyyy'],
                verticalTextAlignment: VerticalTextAlignment.right,
              );
        },
      ),
    );
  }
}
