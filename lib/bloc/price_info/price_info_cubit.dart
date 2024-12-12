import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:k_chart/entity/k_line_entity.dart';
import 'package:trader/bloc/trade_info/trade_info_cubit.dart';

import '../../ui/app_strings.dart';

part 'price_info_state.dart';
part 'price_info_cubit.freezed.dart';

class PriceInfoCubit extends Cubit<PriceInfoState> {
  late WebSocketClient webSocket;
  PriceInfoCubit() : super(const PriceInfoState.initial());

  List<KLineEntity> entities = [];

  onConnect({String? symbol}) {
    // entities.clear();
    emit(const PriceInfoState.loading());
    webSocket = WebSocketClient(
      url: "${AppStrings.BASE_URL}@kline_${switch (symbol) {
            "1D" => "1d",
            "1W" => "1w",
            _ => symbol,
          } ?? "1m"}",
      eventHandler: (data) => onMessageReceived(data),
      onConnect: () {
        debugPrint("Connected");
      },
    );
  }

  onMessageReceived(dynamic newData) {
    emit(const PriceInfoState.loading());

    final data = jsonDecode(newData.toString())['k'] as Map<String, dynamic>;

    final cleanedData = KLineEntity.fromCustom(
      open: double.parse((data['o'])),
      close: double.parse((data['c'])),
      high: double.parse((data['h'])),
      low: double.parse((data['l'])),
      time: data['t'],
      vol: double.parse((data['v'])),
    );

    entities.add(cleanedData);
    // log("price list data: $cleanedData");
    emit(PriceInfoState.success(priceList: entities));
  }
}
