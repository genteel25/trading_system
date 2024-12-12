part of 'trade_info_cubit.dart';

@freezed
class TradeInfoState with _$TradeInfoState {
  const factory TradeInfoState.initial() = _Initial;
  const factory TradeInfoState.loading() = _Loading;
  const factory TradeInfoState.success(
      {required TradeInfoData tradeInfo,
      required String previousPrice,
      required String previousPriceChange,
      required String previousPriceHigh,
      required String previousPriceLow,
      required String previousPriceVolume}) = _Success;
  const factory TradeInfoState.failure() = _Failure;
}
