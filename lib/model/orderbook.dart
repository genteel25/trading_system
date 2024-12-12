import 'package:freezed_annotation/freezed_annotation.dart';

part 'orderbook.g.dart';
part 'orderbook.freezed.dart';

@freezed
class OrderbookData with _$OrderbookData {
  const factory OrderbookData({
    String? price,
    String? quantity,
  }) = _OrderbookData;

  factory OrderbookData.fromJson(Map<String, dynamic> json) =>
      _$OrderbookDataFromJson(json);
}
