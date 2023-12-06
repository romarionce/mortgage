// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayImpl _$$PayImplFromJson(Map<String, dynamic> json) => _$PayImpl(
      json['id'] as int,
      json['loanId'] as String,
      (json['summ'] as num).toDouble(),
      json['payed'] as bool,
      time: const DateConverter().fromJson(json['time'] as String),
    );

Map<String, dynamic> _$$PayImplToJson(_$PayImpl instance) => <String, dynamic>{
      'id': instance.id,
      'loanId': instance.loanId,
      'summ': instance.summ,
      'payed': instance.payed,
      'time': const DateConverter().toJson(instance.time),
    };
