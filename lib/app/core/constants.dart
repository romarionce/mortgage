import 'package:intl/intl.dart';

abstract class Constants {
  static const double defaultPad = 16;

  static var currencyFormatter = NumberFormat.currency(
    locale: 'ru_RU',
    decimalDigits: 0,
    symbol: '\$',
  );

  static var dateFormatter = DateFormat('MMM yyyy');
}
