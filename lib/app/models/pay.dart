import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mortgage/app/core/constants.dart';

part 'pay.freezed.dart';
part 'pay.g.dart';

class DateConverter extends JsonConverter<DateTime, String> {
  const DateConverter();
  @override
  DateTime fromJson(String json) {
    return Constants.dateFormatter.parse(json);
  }

  @override
  String toJson(DateTime object) {
    return Constants.dateFormatter.format(object);
  }
}

@freezed
class Pay with _$Pay {
  const Pay._();
  factory Pay(
    int id,
    String loanId,
    double summ,
    bool payed, {
    @DateConverter() required DateTime time,
  }) = _Pay;

  factory Pay.fromJson(Map<String, dynamic> json) => _$PayFromJson(json);
}
