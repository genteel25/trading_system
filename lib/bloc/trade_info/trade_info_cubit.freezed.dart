// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TradeInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            TradeInfoData tradeInfo,
            String previousPrice,
            String previousPriceChange,
            String previousPriceHigh,
            String previousPriceLow,
            String previousPriceVolume)
        success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            TradeInfoData tradeInfo,
            String previousPrice,
            String previousPriceChange,
            String previousPriceHigh,
            String previousPriceLow,
            String previousPriceVolume)?
        success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            TradeInfoData tradeInfo,
            String previousPrice,
            String previousPriceChange,
            String previousPriceHigh,
            String previousPriceLow,
            String previousPriceVolume)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeInfoStateCopyWith<$Res> {
  factory $TradeInfoStateCopyWith(
          TradeInfoState value, $Res Function(TradeInfoState) then) =
      _$TradeInfoStateCopyWithImpl<$Res, TradeInfoState>;
}

/// @nodoc
class _$TradeInfoStateCopyWithImpl<$Res, $Val extends TradeInfoState>
    implements $TradeInfoStateCopyWith<$Res> {
  _$TradeInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeInfoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TradeInfoStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeInfoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TradeInfoState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            TradeInfoData tradeInfo,
            String previousPrice,
            String previousPriceChange,
            String previousPriceHigh,
            String previousPriceLow,
            String previousPriceVolume)
        success,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            TradeInfoData tradeInfo,
            String previousPrice,
            String previousPriceChange,
            String previousPriceHigh,
            String previousPriceLow,
            String previousPriceVolume)?
        success,
    TResult? Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            TradeInfoData tradeInfo,
            String previousPrice,
            String previousPriceChange,
            String previousPriceHigh,
            String previousPriceLow,
            String previousPriceVolume)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TradeInfoState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TradeInfoStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeInfoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'TradeInfoState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            TradeInfoData tradeInfo,
            String previousPrice,
            String previousPriceChange,
            String previousPriceHigh,
            String previousPriceLow,
            String previousPriceVolume)
        success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            TradeInfoData tradeInfo,
            String previousPrice,
            String previousPriceChange,
            String previousPriceHigh,
            String previousPriceLow,
            String previousPriceVolume)?
        success,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            TradeInfoData tradeInfo,
            String previousPrice,
            String previousPriceChange,
            String previousPriceHigh,
            String previousPriceLow,
            String previousPriceVolume)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TradeInfoState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TradeInfoData tradeInfo,
      String previousPrice,
      String previousPriceChange,
      String previousPriceHigh,
      String previousPriceLow,
      String previousPriceVolume});

  $TradeInfoDataCopyWith<$Res> get tradeInfo;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$TradeInfoStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeInfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradeInfo = null,
    Object? previousPrice = null,
    Object? previousPriceChange = null,
    Object? previousPriceHigh = null,
    Object? previousPriceLow = null,
    Object? previousPriceVolume = null,
  }) {
    return _then(_$SuccessImpl(
      tradeInfo: null == tradeInfo
          ? _value.tradeInfo
          : tradeInfo // ignore: cast_nullable_to_non_nullable
              as TradeInfoData,
      previousPrice: null == previousPrice
          ? _value.previousPrice
          : previousPrice // ignore: cast_nullable_to_non_nullable
              as String,
      previousPriceChange: null == previousPriceChange
          ? _value.previousPriceChange
          : previousPriceChange // ignore: cast_nullable_to_non_nullable
              as String,
      previousPriceHigh: null == previousPriceHigh
          ? _value.previousPriceHigh
          : previousPriceHigh // ignore: cast_nullable_to_non_nullable
              as String,
      previousPriceLow: null == previousPriceLow
          ? _value.previousPriceLow
          : previousPriceLow // ignore: cast_nullable_to_non_nullable
              as String,
      previousPriceVolume: null == previousPriceVolume
          ? _value.previousPriceVolume
          : previousPriceVolume // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of TradeInfoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TradeInfoDataCopyWith<$Res> get tradeInfo {
    return $TradeInfoDataCopyWith<$Res>(_value.tradeInfo, (value) {
      return _then(_value.copyWith(tradeInfo: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {required this.tradeInfo,
      required this.previousPrice,
      required this.previousPriceChange,
      required this.previousPriceHigh,
      required this.previousPriceLow,
      required this.previousPriceVolume});

  @override
  final TradeInfoData tradeInfo;
  @override
  final String previousPrice;
  @override
  final String previousPriceChange;
  @override
  final String previousPriceHigh;
  @override
  final String previousPriceLow;
  @override
  final String previousPriceVolume;

  @override
  String toString() {
    return 'TradeInfoState.success(tradeInfo: $tradeInfo, previousPrice: $previousPrice, previousPriceChange: $previousPriceChange, previousPriceHigh: $previousPriceHigh, previousPriceLow: $previousPriceLow, previousPriceVolume: $previousPriceVolume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.tradeInfo, tradeInfo) ||
                other.tradeInfo == tradeInfo) &&
            (identical(other.previousPrice, previousPrice) ||
                other.previousPrice == previousPrice) &&
            (identical(other.previousPriceChange, previousPriceChange) ||
                other.previousPriceChange == previousPriceChange) &&
            (identical(other.previousPriceHigh, previousPriceHigh) ||
                other.previousPriceHigh == previousPriceHigh) &&
            (identical(other.previousPriceLow, previousPriceLow) ||
                other.previousPriceLow == previousPriceLow) &&
            (identical(other.previousPriceVolume, previousPriceVolume) ||
                other.previousPriceVolume == previousPriceVolume));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      tradeInfo,
      previousPrice,
      previousPriceChange,
      previousPriceHigh,
      previousPriceLow,
      previousPriceVolume);

  /// Create a copy of TradeInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            TradeInfoData tradeInfo,
            String previousPrice,
            String previousPriceChange,
            String previousPriceHigh,
            String previousPriceLow,
            String previousPriceVolume)
        success,
    required TResult Function() failure,
  }) {
    return success(tradeInfo, previousPrice, previousPriceChange,
        previousPriceHigh, previousPriceLow, previousPriceVolume);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            TradeInfoData tradeInfo,
            String previousPrice,
            String previousPriceChange,
            String previousPriceHigh,
            String previousPriceLow,
            String previousPriceVolume)?
        success,
    TResult? Function()? failure,
  }) {
    return success?.call(tradeInfo, previousPrice, previousPriceChange,
        previousPriceHigh, previousPriceLow, previousPriceVolume);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            TradeInfoData tradeInfo,
            String previousPrice,
            String previousPriceChange,
            String previousPriceHigh,
            String previousPriceLow,
            String previousPriceVolume)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(tradeInfo, previousPrice, previousPriceChange,
          previousPriceHigh, previousPriceLow, previousPriceVolume);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements TradeInfoState {
  const factory _Success(
      {required final TradeInfoData tradeInfo,
      required final String previousPrice,
      required final String previousPriceChange,
      required final String previousPriceHigh,
      required final String previousPriceLow,
      required final String previousPriceVolume}) = _$SuccessImpl;

  TradeInfoData get tradeInfo;
  String get previousPrice;
  String get previousPriceChange;
  String get previousPriceHigh;
  String get previousPriceLow;
  String get previousPriceVolume;

  /// Create a copy of TradeInfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$TradeInfoStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeInfoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl();

  @override
  String toString() {
    return 'TradeInfoState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            TradeInfoData tradeInfo,
            String previousPrice,
            String previousPriceChange,
            String previousPriceHigh,
            String previousPriceLow,
            String previousPriceVolume)
        success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            TradeInfoData tradeInfo,
            String previousPrice,
            String previousPriceChange,
            String previousPriceHigh,
            String previousPriceLow,
            String previousPriceVolume)?
        success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            TradeInfoData tradeInfo,
            String previousPrice,
            String previousPriceChange,
            String previousPriceHigh,
            String previousPriceLow,
            String previousPriceVolume)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements TradeInfoState {
  const factory _Failure() = _$FailureImpl;
}
