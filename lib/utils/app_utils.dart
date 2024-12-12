import 'package:k_chart/flutter_k_chart.dart';

import '../ui/colors.dart';

class ChartColor extends ChartColors {
  @override
  List<Color> get bgColor => [
        AppColors.greyTint,
        AppColors.greyTint,
      ];

  @override
  Color get lineFillColor => AppColors.red.withOpacity(0.2);

  @override
  Color get lineFillInsideColor => AppColors.greyTint;

  @override
  Color get kLineColor => AppColors.red;

  @override
  Color get gridColor => AppColors.grey.withOpacity(0.3);

  @override
  Color get nowPriceUpColor => AppColors.greyTint;

  @override
  Color get hCrossColor => AppColors.red;

  @override
  Color get upColor => Color(0xff18B171);

  @override
  Color get dnColor => AppColors.red;

  @override
  Color get vCrossColor => AppColors.red.withOpacity(0.2);
}

class CustomChartStyle extends ChartStyle {
  @override
  List<String>? get dateTimeFormat => [
        'dd',
        '-',
        'mm',
        '-',
        'yy',
      ];
}
