import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trader/model/orderbook.dart';

import '../trade_info/trade_info_cubit.dart';

part 'orderbook_state.dart';
part 'orderbook_cubit.freezed.dart';

class OrderbookCubit extends Cubit<OrderbookState> {
  late WebSocketClient webSocket;
  OrderbookCubit() : super(const OrderbookState.initial());
  Map<String, dynamic> orderbookData = {};
  String previousMaxBidPrice = "0.0";

  onConnect({String? symbol}) {
    emit(const OrderbookState.loading());
    webSocket = WebSocketClient(
      url:
          "wss://stream.binance.com:9443/ws/btcusdt@depth${symbol ?? "5"}@1000ms",
      eventHandler: (data) => onMessageReceived(data),
      onConnect: () {
        // log("onconnect");
      },
    );
  }

  onMessageReceived(dynamic newData) {
    emit(const OrderbookState.loading());

    if (newData != null) {
      final data = jsonDecode(newData.toString());
      // log("order data: $data");

      List<OrderbookData> bids = (data['bids'] as List)
          .map((item) => OrderbookData(price: item.first, quantity: item.last))
          .toList();
      List<OrderbookData> asks = (data['asks'] as List)
          .map((item) => OrderbookData(price: item.first, quantity: item.last))
          .toList();
      orderbookData['bids'] = bids;
      orderbookData['asks'] = asks;

      String maxBidQuantity = bids
              .reduce((value, element) =>
                  double.parse((value.quantity ?? "0.0")) >
                          double.parse(element.quantity ?? "0.0")
                      ? value
                      : element)
              .quantity ??
          0.0.toString();
      String maxBidPrice = bids
              .reduce((value, element) => double.parse((value.price ?? "0.0")) >
                      double.parse(element.price ?? "0.0")
                  ? value
                  : element)
              .price ??
          0.0.toString();
      String maxAskQuantity = asks
              .reduce((value, element) =>
                  double.parse((value.quantity ?? "0.0")) >
                          double.parse(element.quantity ?? "0.0")
                      ? value
                      : element)
              .quantity ??
          0.0.toString();
      String minAskPrice = asks
              .reduce((value, element) => double.parse((value.price ?? "0.0")) <
                      double.parse(element.price ?? "0.0")
                  ? value
                  : element)
              .price ??
          0.0.toString();

      emit(OrderbookState.success(
        data: orderbookData,
        maxAskQuantity: maxAskQuantity,
        maxBidQuantity: maxBidQuantity,
        maxBidPrice: maxBidPrice,
        minAskPrice: minAskPrice,
        previousMaxBidPrice: previousMaxBidPrice,
      ));

      previousMaxBidPrice = maxBidPrice;
    }
  }
}
