// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trade_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TradeInfoDataImpl _$$TradeInfoDataImplFromJson(Map<String, dynamic> json) =>
    _$TradeInfoDataImpl(
      currentPrice: json['c'] as String?,
      priceChange: json['p'] as String?,
      priceChangePercent: json['P'] as String?,
      priceHigh: json['h'] as String?,
      priceLow: json['l'] as String?,
      priceVolume: json['v'] as String?,
    );

Map<String, dynamic> _$$TradeInfoDataImplToJson(_$TradeInfoDataImpl instance) =>
    <String, dynamic>{
      'c': instance.currentPrice,
      'p': instance.priceChange,
      'P': instance.priceChangePercent,
      'h': instance.priceHigh,
      'l': instance.priceLow,
      'v': instance.priceVolume,
    };
