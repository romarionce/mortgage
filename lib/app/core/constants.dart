import 'package:intl/intl.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract class Constants {
  static const double defaultPad = 16;

  static var currencyFormatter = NumberFormat.currency(
    locale: 'ru_RU',
    decimalDigits: 0,
    symbol: '\$',
  );
}
