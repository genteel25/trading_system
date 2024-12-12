// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orderbook_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderbookState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Map<String, dynamic> data,
            String maxBidQuantity,
            String maxAskQuantity,
            String maxBidPrice,
            String minAskPrice,
            String previousMaxBidPrice)
        success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            Map<String, dynamic> data,
            String maxBidQuantity,
            String maxAskQuantity,
            String maxBidPrice,
            String minAskPrice,
            String previousMaxBidPrice)?
        success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Map<String, dynamic> data,
            String maxBidQuantity,
            String maxAskQuantity,
            String maxBidPrice,
            String minAskPrice,
            String previousMaxBidPrice)?
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
abstract class $OrderbookStateCopyWith<$Res> {
  factory $OrderbookStateCopyWith(
          OrderbookState value, $Res Function(OrderbookState) then) =
      _$OrderbookStateCopyWithImpl<$Res, OrderbookState>;
}

/// @nodoc
class _$OrderbookStateCopyWithImpl<$Res, $Val extends OrderbookState>
    implements $OrderbookStateCopyWith<$Res> {
  _$OrderbookStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderbookState
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
    extends _$OrderbookStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderbookState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OrderbookState.initial()';
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
            Map<String, dynamic> data,
            String maxBidQuantity,
            String maxAskQuantity,
            String maxBidPrice,
            String minAskPrice,
            String previousMaxBidPrice)
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
            Map<String, dynamic> data,
            String maxBidQuantity,
            String maxAskQuantity,
            String maxBidPrice,
            String minAskPrice,
            String previousMaxBidPrice)?
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
            Map<String, dynamic> data,
            String maxBidQuantity,
            String maxAskQuantity,
            String maxBidPrice,
            String minAskPrice,
            String previousMaxBidPrice)?
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

abstract class _Initial implements OrderbookState {
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
    extends _$OrderbookStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderbookState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'OrderbookState.loading()';
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
            Map<String, dynamic> data,
            String maxBidQuantity,
            String maxAskQuantity,
            String maxBidPrice,
            String minAskPrice,
            String previousMaxBidPrice)
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
            Map<String, dynamic> data,
            String maxBidQuantity,
            String maxAskQuantity,
            String maxBidPrice,
            String minAskPrice,
            String previousMaxBidPrice)?
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
            Map<String, dynamic> data,
            String maxBidQuantity,
            String maxAskQuantity,
            String maxBidPrice,
            String minAskPrice,
            String previousMaxBidPrice)?
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

abstract class _Loading implements OrderbookState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Map<String, dynamic> data,
      String maxBidQuantity,
      String maxAskQuantity,
      String maxBidPrice,
      String minAskPrice,
      String previousMaxBidPrice});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$OrderbookStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderbookState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? maxBidQuantity = null,
    Object? maxAskQuantity = null,
    Object? maxBidPrice = null,
    Object? minAskPrice = null,
    Object? previousMaxBidPrice = null,
  }) {
    return _then(_$SuccessImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      maxBidQuantity: null == maxBidQuantity
          ? _value.maxBidQuantity
          : maxBidQuantity // ignore: cast_nullable_to_non_nullable
              as String,
      maxAskQuantity: null == maxAskQuantity
          ? _value.maxAskQuantity
          : maxAskQuantity // ignore: cast_nullable_to_non_nullable
              as String,
      maxBidPrice: null == maxBidPrice
          ? _value.maxBidPrice
          : maxBidPrice // ignore: cast_nullable_to_non_nullable
              as String,
      minAskPrice: null == minAskPrice
          ? _value.minAskPrice
          : minAskPrice // ignore: cast_nullable_to_non_nullable
              as String,
      previousMaxBidPrice: null == previousMaxBidPrice
          ? _value.previousMaxBidPrice
          : previousMaxBidPrice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {required final Map<String, dynamic> data,
      required this.maxBidQuantity,
      required this.maxAskQuantity,
      required this.maxBidPrice,
      required this.minAskPrice,
      required this.previousMaxBidPrice})
      : _data = data;

  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final String maxBidQuantity;
  @override
  final String maxAskQuantity;
  @override
  final String maxBidPrice;
  @override
  final String minAskPrice;
  @override
  final String previousMaxBidPrice;

  @override
  String toString() {
    return 'OrderbookState.success(data: $data, maxBidQuantity: $maxBidQuantity, maxAskQuantity: $maxAskQuantity, maxBidPrice: $maxBidPrice, minAskPrice: $minAskPrice, previousMaxBidPrice: $previousMaxBidPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.maxBidQuantity, maxBidQuantity) ||
                other.maxBidQuantity == maxBidQuantity) &&
            (identical(other.maxAskQuantity, maxAskQuantity) ||
                other.maxAskQuantity == maxAskQuantity) &&
            (identical(other.maxBidPrice, maxBidPrice) ||
                other.maxBidPrice == maxBidPrice) &&
            (identical(other.minAskPrice, minAskPrice) ||
                other.minAskPrice == minAskPrice) &&
            (identical(other.previousMaxBidPrice, previousMaxBidPrice) ||
                other.previousMaxBidPrice == previousMaxBidPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      maxBidQuantity,
      maxAskQuantity,
      maxBidPrice,
      minAskPrice,
      previousMaxBidPrice);

  /// Create a copy of OrderbookState
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
            Map<String, dynamic> data,
            String maxBidQuantity,
            String maxAskQuantity,
            String maxBidPrice,
            String minAskPrice,
            String previousMaxBidPrice)
        success,
    required TResult Function() failure,
  }) {
    return success(data, maxBidQuantity, maxAskQuantity, maxBidPrice,
        minAskPrice, previousMaxBidPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            Map<String, dynamic> data,
            String maxBidQuantity,
            String maxAskQuantity,
            String maxBidPrice,
            String minAskPrice,
            String previousMaxBidPrice)?
        success,
    TResult? Function()? failure,
  }) {
    return success?.call(data, maxBidQuantity, maxAskQuantity, maxBidPrice,
        minAskPrice, previousMaxBidPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            Map<String, dynamic> data,
            String maxBidQuantity,
            String maxAskQuantity,
            String maxBidPrice,
            String minAskPrice,
            String previousMaxBidPrice)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data, maxBidQuantity, maxAskQuantity, maxBidPrice,
          minAskPrice, previousMaxBidPrice);
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

abstract class _Success implements OrderbookState {
  const factory _Success(
      {required final Map<String, dynamic> data,
      required final String maxBidQuantity,
      required final String maxAskQuantity,
      required final String maxBidPrice,
      required final String minAskPrice,
      required final String previousMaxBidPrice}) = _$SuccessImpl;

  Map<String, dynamic> get data;
  String get maxBidQuantity;
  String get maxAskQuantity;
  String get maxBidPrice;
  String get minAskPrice;
  String get previousMaxBidPrice;

  /// Create a copy of OrderbookState
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
    extends _$OrderbookStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderbookState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl();

  @override
  String toString() {
    return 'OrderbookState.failure()';
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
            Map<String, dynamic> data,
            String maxBidQuantity,
            String maxAskQuantity,
            String maxBidPrice,
            String minAskPrice,
            String previousMaxBidPrice)
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
            Map<String, dynamic> data,
            String maxBidQuantity,
            String maxAskQuantity,
            String maxBidPrice,
            String minAskPrice,
            String previousMaxBidPrice)?
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
            Map<String, dynamic> data,
            String maxBidQuantity,
            String maxAskQuantity,
            String maxBidPrice,
            String minAskPrice,
            String previousMaxBidPrice)?
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

abstract class _Failure implements OrderbookState {
  const factory _Failure() = _$FailureImpl;
}
