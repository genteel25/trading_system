// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TradeInfoData _$TradeInfoDataFromJson(Map<String, dynamic> json) {
  return _TradeInfoData.fromJson(json);
}

/// @nodoc
mixin _$TradeInfoData {
  @JsonKey(name: 'c')
  String? get currentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'p')
  String? get priceChange => throw _privateConstructorUsedError;
  @JsonKey(name: 'P')
  String? get priceChangePercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'h')
  String? get priceHigh => throw _privateConstructorUsedError;
  @JsonKey(name: 'l')
  String? get priceLow => throw _privateConstructorUsedError;
  @JsonKey(name: 'v')
  String? get priceVolume => throw _privateConstructorUsedError;

  /// Serializes this TradeInfoData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradeInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeInfoDataCopyWith<TradeInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeInfoDataCopyWith<$Res> {
  factory $TradeInfoDataCopyWith(
          TradeInfoData value, $Res Function(TradeInfoData) then) =
      _$TradeInfoDataCopyWithImpl<$Res, TradeInfoData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'c') String? currentPrice,
      @JsonKey(name: 'p') String? priceChange,
      @JsonKey(name: 'P') String? priceChangePercent,
      @JsonKey(name: 'h') String? priceHigh,
      @JsonKey(name: 'l') String? priceLow,
      @JsonKey(name: 'v') String? priceVolume});
}

/// @nodoc
class _$TradeInfoDataCopyWithImpl<$Res, $Val extends TradeInfoData>
    implements $TradeInfoDataCopyWith<$Res> {
  _$TradeInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPrice = freezed,
    Object? priceChange = freezed,
    Object? priceChangePercent = freezed,
    Object? priceHigh = freezed,
    Object? priceLow = freezed,
    Object? priceVolume = freezed,
  }) {
    return _then(_value.copyWith(
      currentPrice: freezed == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      priceChange: freezed == priceChange
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as String?,
      priceChangePercent: freezed == priceChangePercent
          ? _value.priceChangePercent
          : priceChangePercent // ignore: cast_nullable_to_non_nullable
              as String?,
      priceHigh: freezed == priceHigh
          ? _value.priceHigh
          : priceHigh // ignore: cast_nullable_to_non_nullable
              as String?,
      priceLow: freezed == priceLow
          ? _value.priceLow
          : priceLow // ignore: cast_nullable_to_non_nullable
              as String?,
      priceVolume: freezed == priceVolume
          ? _value.priceVolume
          : priceVolume // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeInfoDataImplCopyWith<$Res>
    implements $TradeInfoDataCopyWith<$Res> {
  factory _$$TradeInfoDataImplCopyWith(
          _$TradeInfoDataImpl value, $Res Function(_$TradeInfoDataImpl) then) =
      __$$TradeInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'c') String? currentPrice,
      @JsonKey(name: 'p') String? priceChange,
      @JsonKey(name: 'P') String? priceChangePercent,
      @JsonKey(name: 'h') String? priceHigh,
      @JsonKey(name: 'l') String? priceLow,
      @JsonKey(name: 'v') String? priceVolume});
}

/// @nodoc
class __$$TradeInfoDataImplCopyWithImpl<$Res>
    extends _$TradeInfoDataCopyWithImpl<$Res, _$TradeInfoDataImpl>
    implements _$$TradeInfoDataImplCopyWith<$Res> {
  __$$TradeInfoDataImplCopyWithImpl(
      _$TradeInfoDataImpl _value, $Res Function(_$TradeInfoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPrice = freezed,
    Object? priceChange = freezed,
    Object? priceChangePercent = freezed,
    Object? priceHigh = freezed,
    Object? priceLow = freezed,
    Object? priceVolume = freezed,
  }) {
    return _then(_$TradeInfoDataImpl(
      currentPrice: freezed == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      priceChange: freezed == priceChange
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as String?,
      priceChangePercent: freezed == priceChangePercent
          ? _value.priceChangePercent
          : priceChangePercent // ignore: cast_nullable_to_non_nullable
              as String?,
      priceHigh: freezed == priceHigh
          ? _value.priceHigh
          : priceHigh // ignore: cast_nullable_to_non_nullable
              as String?,
      priceLow: freezed == priceLow
          ? _value.priceLow
          : priceLow // ignore: cast_nullable_to_non_nullable
              as String?,
      priceVolume: freezed == priceVolume
          ? _value.priceVolume
          : priceVolume // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeInfoDataImpl implements _TradeInfoData {
  const _$TradeInfoDataImpl(
      {@JsonKey(name: 'c') this.currentPrice,
      @JsonKey(name: 'p') this.priceChange,
      @JsonKey(name: 'P') this.priceChangePercent,
      @JsonKey(name: 'h') this.priceHigh,
      @JsonKey(name: 'l') this.priceLow,
      @JsonKey(name: 'v') this.priceVolume});

  factory _$TradeInfoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeInfoDataImplFromJson(json);

  @override
  @JsonKey(name: 'c')
  final String? currentPrice;
  @override
  @JsonKey(name: 'p')
  final String? priceChange;
  @override
  @JsonKey(name: 'P')
  final String? priceChangePercent;
  @override
  @JsonKey(name: 'h')
  final String? priceHigh;
  @override
  @JsonKey(name: 'l')
  final String? priceLow;
  @override
  @JsonKey(name: 'v')
  final String? priceVolume;

  @override
  String toString() {
    return 'TradeInfoData(currentPrice: $currentPrice, priceChange: $priceChange, priceChangePercent: $priceChangePercent, priceHigh: $priceHigh, priceLow: $priceLow, priceVolume: $priceVolume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeInfoDataImpl &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.priceChange, priceChange) ||
                other.priceChange == priceChange) &&
            (identical(other.priceChangePercent, priceChangePercent) ||
                other.priceChangePercent == priceChangePercent) &&
            (identical(other.priceHigh, priceHigh) ||
                other.priceHigh == priceHigh) &&
            (identical(other.priceLow, priceLow) ||
                other.priceLow == priceLow) &&
            (identical(other.priceVolume, priceVolume) ||
                other.priceVolume == priceVolume));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentPrice, priceChange,
      priceChangePercent, priceHigh, priceLow, priceVolume);

  /// Create a copy of TradeInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeInfoDataImplCopyWith<_$TradeInfoDataImpl> get copyWith =>
      __$$TradeInfoDataImplCopyWithImpl<_$TradeInfoDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeInfoDataImplToJson(
      this,
    );
  }
}

abstract class _TradeInfoData implements TradeInfoData {
  const factory _TradeInfoData(
      {@JsonKey(name: 'c') final String? currentPrice,
      @JsonKey(name: 'p') final String? priceChange,
      @JsonKey(name: 'P') final String? priceChangePercent,
      @JsonKey(name: 'h') final String? priceHigh,
      @JsonKey(name: 'l') final String? priceLow,
      @JsonKey(name: 'v') final String? priceVolume}) = _$TradeInfoDataImpl;

  factory _TradeInfoData.fromJson(Map<String, dynamic> json) =
      _$TradeInfoDataImpl.fromJson;

  @override
  @JsonKey(name: 'c')
  String? get currentPrice;
  @override
  @JsonKey(name: 'p')
  String? get priceChange;
  @override
  @JsonKey(name: 'P')
  String? get priceChangePercent;
  @override
  @JsonKey(name: 'h')
  String? get priceHigh;
  @override
  @JsonKey(name: 'l')
  String? get priceLow;
  @override
  @JsonKey(name: 'v')
  String? get priceVolume;

  /// Create a copy of TradeInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeInfoDataImplCopyWith<_$TradeInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
