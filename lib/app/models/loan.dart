import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mortgage/app/models/pay.dart';

part 'loan.freezed.dart';
part 'loan.g.dart';

@freezed
class Loan with _$Loan {
  const Loan._();
  factory Loan(
    String id,
    String name,
    List<Pay> pays,
    double summ,
    double monthPay,
    double rate,
    int years,
    DateTime dateStart,
    String type,
  ) = _Loan;

  double get alreadyPayed {
    var sum = .0;
    for (var pay in pays) {
      if (pay.payed) sum += pay.summ;
    }
    return sum;
  }

  double get payedPercent => (alreadyPayed / summ * 100).ceil() / 100;

  factory Loan.fromJson(Map<String, dynamic> json) => _$LoanFromJson(json);
}
