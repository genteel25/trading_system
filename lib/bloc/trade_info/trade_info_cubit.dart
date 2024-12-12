import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_socket_client/web_socket_client.dart';

import '../../model/trade_info.dart';

part 'trade_info_state.dart';
part 'trade_info_cubit.freezed.dart';

class TradeInfoCubit extends Cubit<TradeInfoState> {
  late WebSocketClient webSocket;
  TradeInfoCubit() : super(const TradeInfoState.initial());
  String previousPrice = "0";
  String previousPriceChange = "0";
  String previousPriceHigh = "0";
  String previousPriceLow = "0";
  String previousPriceVolume = "0";

  onConnect() {
    emit(const TradeInfoState.loading());
    webSocket = WebSocketClient(
      url: "wss://stream.binance.com:9443/ws/btcusdt@ticker",
      eventHandler: (data) => onMessageReceived(data),
      onConnect: () {
        log("onconnect");
      },
    );
  }

  onMessageReceived(dynamic newData) {
    emit(const TradeInfoState.loading());
    final data = jsonDecode(newData.toString()) as Map<String, dynamic>;

    // log("price data: $data");
    final priceList = TradeInfoData.fromJson(data);
    // log("price list: ${priceList.priceChangePercent}");
    emit(TradeInfoState.success(
        tradeInfo: priceList,
        previousPrice: previousPrice,
        previousPriceChange: previousPriceChange,
        previousPriceHigh: previousPriceHigh,
        previousPriceLow: previousPriceLow,
        previousPriceVolume: previousPriceVolume));
    previousPrice = priceList.currentPrice ?? "0";
    previousPriceChange = priceList.priceChange ?? "0";
    previousPriceHigh = priceList.priceHigh ?? "0";
    previousPriceLow = priceList.priceLow ?? "0";
    previousPriceVolume = priceList.priceVolume ?? "0";
    // webSocket.close();
  }
}

class WebSocketClient {
  late WebSocket socket;

  late Function(dynamic data) eventHandler;

  late String url;

  dynamic data;

  WebSocketClient(
      {required this.url, required this.eventHandler, Function()? onConnect}) {
    connect(onConnect);
  }

  void connect([connectParams]) {
    socket = WebSocket(Uri.parse(url));
    if (connectParams != null) {
      socket.connection.listen((event) {
        // log("websocket event: $event");
        if (event == Connected()) connectParams();
      });
    }
    socket.messages.listen((message) {
      eventHandler(message);
    });
  }

  void onConnect() {}

  void close([closeParams]) => socket.close(); // socket.close();

  void send([message]) => socket.send(message);
}
