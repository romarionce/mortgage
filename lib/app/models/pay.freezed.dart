// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pay.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pay _$PayFromJson(Map<String, dynamic> json) {
  return _Pay.fromJson(json);
}

/// @nodoc
mixin _$Pay {
  int get id => throw _privateConstructorUsedError;
  String get loanId => throw _privateConstructorUsedError;
  double get summ => throw _privateConstructorUsedError;
  bool get payed => throw _privateConstructorUsedError;
  @DateConverter()
  DateTime get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayCopyWith<Pay> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayCopyWith<$Res> {
  factory $PayCopyWith(Pay value, $Res Function(Pay) then) =
      _$PayCopyWithImpl<$Res, Pay>;
  @useResult
  $Res call(
      {int id,
      String loanId,
      double summ,
      bool payed,
      @DateConverter() DateTime time});
}

/// @nodoc
class _$PayCopyWithImpl<$Res, $Val extends Pay> implements $PayCopyWith<$Res> {
  _$PayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? loanId = null,
    Object? summ = null,
    Object? payed = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      loanId: null == loanId
          ? _value.loanId
          : loanId // ignore: cast_nullable_to_non_nullable
              as String,
      summ: null == summ
          ? _value.summ
          : summ // ignore: cast_nullable_to_non_nullable
              as double,
      payed: null == payed
          ? _value.payed
          : payed // ignore: cast_nullable_to_non_nullable
              as bool,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayImplCopyWith<$Res> implements $PayCopyWith<$Res> {
  factory _$$PayImplCopyWith(_$PayImpl value, $Res Function(_$PayImpl) then) =
      __$$PayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String loanId,
      double summ,
      bool payed,
      @DateConverter() DateTime time});
}

/// @nodoc
class __$$PayImplCopyWithImpl<$Res> extends _$PayCopyWithImpl<$Res, _$PayImpl>
    implements _$$PayImplCopyWith<$Res> {
  __$$PayImplCopyWithImpl(_$PayImpl _value, $Res Function(_$PayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? loanId = null,
    Object? summ = null,
    Object? payed = null,
    Object? time = null,
  }) {
    return _then(_$PayImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == loanId
          ? _value.loanId
          : loanId // ignore: cast_nullable_to_non_nullable
              as String,
      null == summ
          ? _value.summ
          : summ // ignore: cast_nullable_to_non_nullable
              as double,
      null == payed
          ? _value.payed
          : payed // ignore: cast_nullable_to_non_nullable
              as bool,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayImpl extends _Pay {
  _$PayImpl(this.id, this.loanId, this.summ, this.payed,
      {@DateConverter() required this.time})
      : super._();

  factory _$PayImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayImplFromJson(json);

  @override
  final int id;
  @override
  final String loanId;
  @override
  final double summ;
  @override
  final bool payed;
  @override
  @DateConverter()
  final DateTime time;

  @override
  String toString() {
    return 'Pay(id: $id, loanId: $loanId, summ: $summ, payed: $payed, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.loanId, loanId) || other.loanId == loanId) &&
            (identical(other.summ, summ) || other.summ == summ) &&
            (identical(other.payed, payed) || other.payed == payed) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, loanId, summ, payed, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayImplCopyWith<_$PayImpl> get copyWith =>
      __$$PayImplCopyWithImpl<_$PayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayImplToJson(
      this,
    );
  }
}

abstract class _Pay extends Pay {
  factory _Pay(
      final int id, final String loanId, final double summ, final bool payed,
      {@DateConverter() required final DateTime time}) = _$PayImpl;
  _Pay._() : super._();

  factory _Pay.fromJson(Map<String, dynamic> json) = _$PayImpl.fromJson;

  @override
  int get id;
  @override
  String get loanId;
  @override
  double get summ;
  @override
  bool get payed;
  @override
  @DateConverter()
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$PayImplCopyWith<_$PayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
