import 'package:freezed_annotation/freezed_annotation.dart';

part 'trade_info.g.dart';
part 'trade_info.freezed.dart';

@freezed
class TradeInfoData with _$TradeInfoData {
  const factory TradeInfoData({
    @JsonKey(name: 'c') String? currentPrice,
    @JsonKey(name: 'p') String? priceChange,
    @JsonKey(name: 'P') String? priceChangePercent,
    @JsonKey(name: 'h') String? priceHigh,
    @JsonKey(name: 'l') String? priceLow,
    @JsonKey(name: 'v') String? priceVolume,
  }) = _TradeInfoData;

  factory TradeInfoData.fromJson(Map<String, dynamic> json) =>
      _$TradeInfoDataFromJson(json);
}
