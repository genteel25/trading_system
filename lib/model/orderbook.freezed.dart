// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orderbook.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderbookData _$OrderbookDataFromJson(Map<String, dynamic> json) {
  return _OrderbookData.fromJson(json);
}

/// @nodoc
mixin _$OrderbookData {
  String? get price => throw _privateConstructorUsedError;
  String? get quantity => throw _privateConstructorUsedError;

  /// Serializes this OrderbookData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderbookData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderbookDataCopyWith<OrderbookData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderbookDataCopyWith<$Res> {
  factory $OrderbookDataCopyWith(
          OrderbookData value, $Res Function(OrderbookData) then) =
      _$OrderbookDataCopyWithImpl<$Res, OrderbookData>;
  @useResult
  $Res call({String? price, String? quantity});
}

/// @nodoc
class _$OrderbookDataCopyWithImpl<$Res, $Val extends OrderbookData>
    implements $OrderbookDataCopyWith<$Res> {
  _$OrderbookDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderbookData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderbookDataImplCopyWith<$Res>
    implements $OrderbookDataCopyWith<$Res> {
  factory _$$OrderbookDataImplCopyWith(
          _$OrderbookDataImpl value, $Res Function(_$OrderbookDataImpl) then) =
      __$$OrderbookDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? price, String? quantity});
}

/// @nodoc
class __$$OrderbookDataImplCopyWithImpl<$Res>
    extends _$OrderbookDataCopyWithImpl<$Res, _$OrderbookDataImpl>
    implements _$$OrderbookDataImplCopyWith<$Res> {
  __$$OrderbookDataImplCopyWithImpl(
      _$OrderbookDataImpl _value, $Res Function(_$OrderbookDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderbookData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$OrderbookDataImpl(
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderbookDataImpl implements _OrderbookData {
  const _$OrderbookDataImpl({this.price, this.quantity});

  factory _$OrderbookDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderbookDataImplFromJson(json);

  @override
  final String? price;
  @override
  final String? quantity;

  @override
  String toString() {
    return 'OrderbookData(price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderbookDataImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, price, quantity);

  /// Create a copy of OrderbookData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderbookDataImplCopyWith<_$OrderbookDataImpl> get copyWith =>
      __$$OrderbookDataImplCopyWithImpl<_$OrderbookDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderbookDataImplToJson(
      this,
    );
  }
}

abstract class _OrderbookData implements OrderbookData {
  const factory _OrderbookData({final String? price, final String? quantity}) =
      _$OrderbookDataImpl;

  factory _OrderbookData.fromJson(Map<String, dynamic> json) =
      _$OrderbookDataImpl.fromJson;

  @override
  String? get price;
  @override
  String? get quantity;

  /// Create a copy of OrderbookData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderbookDataImplCopyWith<_$OrderbookDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
