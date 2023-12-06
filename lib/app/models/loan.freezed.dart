// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Loan _$LoanFromJson(Map<String, dynamic> json) {
  return _Loan.fromJson(json);
}

/// @nodoc
mixin _$Loan {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Pay> get pays => throw _privateConstructorUsedError;
  double get summ => throw _privateConstructorUsedError;
  double get monthPay => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;
  int get years => throw _privateConstructorUsedError;
  DateTime get dateStart => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanCopyWith<Loan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanCopyWith<$Res> {
  factory $LoanCopyWith(Loan value, $Res Function(Loan) then) =
      _$LoanCopyWithImpl<$Res, Loan>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<Pay> pays,
      double summ,
      double monthPay,
      double rate,
      int years,
      DateTime dateStart,
      String type});
}

/// @nodoc
class _$LoanCopyWithImpl<$Res, $Val extends Loan>
    implements $LoanCopyWith<$Res> {
  _$LoanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? pays = null,
    Object? summ = null,
    Object? monthPay = null,
    Object? rate = null,
    Object? years = null,
    Object? dateStart = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pays: null == pays
          ? _value.pays
          : pays // ignore: cast_nullable_to_non_nullable
              as List<Pay>,
      summ: null == summ
          ? _value.summ
          : summ // ignore: cast_nullable_to_non_nullable
              as double,
      monthPay: null == monthPay
          ? _value.monthPay
          : monthPay // ignore: cast_nullable_to_non_nullable
              as double,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      years: null == years
          ? _value.years
          : years // ignore: cast_nullable_to_non_nullable
              as int,
      dateStart: null == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoanImplCopyWith<$Res> implements $LoanCopyWith<$Res> {
  factory _$$LoanImplCopyWith(
          _$LoanImpl value, $Res Function(_$LoanImpl) then) =
      __$$LoanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<Pay> pays,
      double summ,
      double monthPay,
      double rate,
      int years,
      DateTime dateStart,
      String type});
}

/// @nodoc
class __$$LoanImplCopyWithImpl<$Res>
    extends _$LoanCopyWithImpl<$Res, _$LoanImpl>
    implements _$$LoanImplCopyWith<$Res> {
  __$$LoanImplCopyWithImpl(_$LoanImpl _value, $Res Function(_$LoanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? pays = null,
    Object? summ = null,
    Object? monthPay = null,
    Object? rate = null,
    Object? years = null,
    Object? dateStart = null,
    Object? type = null,
  }) {
    return _then(_$LoanImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == pays
          ? _value._pays
          : pays // ignore: cast_nullable_to_non_nullable
              as List<Pay>,
      null == summ
          ? _value.summ
          : summ // ignore: cast_nullable_to_non_nullable
              as double,
      null == monthPay
          ? _value.monthPay
          : monthPay // ignore: cast_nullable_to_non_nullable
              as double,
      null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      null == years
          ? _value.years
          : years // ignore: cast_nullable_to_non_nullable
              as int,
      null == dateStart
          ? _value.dateStart
          : dateStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanImpl extends _Loan {
  _$LoanImpl(this.id, this.name, final List<Pay> pays, this.summ, this.monthPay,
      this.rate, this.years, this.dateStart, this.type)
      : _pays = pays,
        super._();

  factory _$LoanImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<Pay> _pays;
  @override
  List<Pay> get pays {
    if (_pays is EqualUnmodifiableListView) return _pays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pays);
  }

  @override
  final double summ;
  @override
  final double monthPay;
  @override
  final double rate;
  @override
  final int years;
  @override
  final DateTime dateStart;
  @override
  final String type;

  @override
  String toString() {
    return 'Loan(id: $id, name: $name, pays: $pays, summ: $summ, monthPay: $monthPay, rate: $rate, years: $years, dateStart: $dateStart, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._pays, _pays) &&
            (identical(other.summ, summ) || other.summ == summ) &&
            (identical(other.monthPay, monthPay) ||
                other.monthPay == monthPay) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.years, years) || other.years == years) &&
            (identical(other.dateStart, dateStart) ||
                other.dateStart == dateStart) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_pays),
      summ,
      monthPay,
      rate,
      years,
      dateStart,
      type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanImplCopyWith<_$LoanImpl> get copyWith =>
      __$$LoanImplCopyWithImpl<_$LoanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanImplToJson(
      this,
    );
  }
}

abstract class _Loan extends Loan {
  factory _Loan(
      final String id,
      final String name,
      final List<Pay> pays,
      final double summ,
      final double monthPay,
      final double rate,
      final int years,
      final DateTime dateStart,
      final String type) = _$LoanImpl;
  _Loan._() : super._();

  factory _Loan.fromJson(Map<String, dynamic> json) = _$LoanImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<Pay> get pays;
  @override
  double get summ;
  @override
  double get monthPay;
  @override
  double get rate;
  @override
  int get years;
  @override
  DateTime get dateStart;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$LoanImplCopyWith<_$LoanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
