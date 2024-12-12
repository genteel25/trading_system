part of 'orderbook_cubit.dart';

@freezed
class OrderbookState with _$OrderbookState {
  const factory OrderbookState.initial() = _Initial;
  const factory OrderbookState.loading() = _Loading;
  const factory OrderbookState.success({
    required Map<String, dynamic> data,
    required String maxBidQuantity,
    required String maxAskQuantity,
    required String maxBidPrice,
    required String minAskPrice,
    required String previousMaxBidPrice,
  }) = _Success;
  const factory OrderbookState.failure() = _Failure;
}
