part of 'price_info_cubit.dart';

@freezed
class PriceInfoState with _$PriceInfoState {
  const factory PriceInfoState.initial() = _Initial;
  const factory PriceInfoState.loading() = _Loading;
  const factory PriceInfoState.success({required List<KLineEntity> priceList}) = _Success;
  const factory PriceInfoState.failure() = _Failure;
}
