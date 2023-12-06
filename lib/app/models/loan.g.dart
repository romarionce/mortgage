// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoanImpl _$$LoanImplFromJson(Map<String, dynamic> json) => _$LoanImpl(
      json['id'] as String,
      json['name'] as String,
      (json['pays'] as List<dynamic>)
          .map((e) => Pay.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['summ'] as num).toDouble(),
      (json['monthPay'] as num).toDouble(),
      (json['rate'] as num).toDouble(),
      json['years'] as int,
      DateTime.parse(json['dateStart'] as String),
      json['type'] as String,
    );

Map<String, dynamic> _$$LoanImplToJson(_$LoanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'pays': instance.pays,
      'summ': instance.summ,
      'monthPay': instance.monthPay,
      'rate': instance.rate,
      'years': instance.years,
      'dateStart': instance.dateStart.toIso8601String(),
      'type': instance.type,
    };
