// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../feels_like_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeelsLikeModel _$FeelsLikeModelFromJson(Map<String, dynamic> json) {
  return _FeelsLikeModel.fromJson(json);
}

/// @nodoc
mixin _$FeelsLikeModel {
  double get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeelsLikeModelCopyWith<FeelsLikeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeelsLikeModelCopyWith<$Res> {
  factory $FeelsLikeModelCopyWith(
          FeelsLikeModel value, $Res Function(FeelsLikeModel) then) =
      _$FeelsLikeModelCopyWithImpl<$Res, FeelsLikeModel>;
  @useResult
  $Res call({double day});
}

/// @nodoc
class _$FeelsLikeModelCopyWithImpl<$Res, $Val extends FeelsLikeModel>
    implements $FeelsLikeModelCopyWith<$Res> {
  _$FeelsLikeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeelsLikeModelImplCopyWith<$Res>
    implements $FeelsLikeModelCopyWith<$Res> {
  factory _$$FeelsLikeModelImplCopyWith(_$FeelsLikeModelImpl value,
          $Res Function(_$FeelsLikeModelImpl) then) =
      __$$FeelsLikeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double day});
}

/// @nodoc
class __$$FeelsLikeModelImplCopyWithImpl<$Res>
    extends _$FeelsLikeModelCopyWithImpl<$Res, _$FeelsLikeModelImpl>
    implements _$$FeelsLikeModelImplCopyWith<$Res> {
  __$$FeelsLikeModelImplCopyWithImpl(
      _$FeelsLikeModelImpl _value, $Res Function(_$FeelsLikeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
  }) {
    return _then(_$FeelsLikeModelImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeelsLikeModelImpl implements _FeelsLikeModel {
  const _$FeelsLikeModelImpl({required this.day});

  factory _$FeelsLikeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeelsLikeModelImplFromJson(json);

  @override
  final double day;

  @override
  String toString() {
    return 'FeelsLikeModel(day: $day)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeelsLikeModelImpl &&
            (identical(other.day, day) || other.day == day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeelsLikeModelImplCopyWith<_$FeelsLikeModelImpl> get copyWith =>
      __$$FeelsLikeModelImplCopyWithImpl<_$FeelsLikeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeelsLikeModelImplToJson(
      this,
    );
  }
}

abstract class _FeelsLikeModel implements FeelsLikeModel {
  const factory _FeelsLikeModel({required final double day}) =
      _$FeelsLikeModelImpl;

  factory _FeelsLikeModel.fromJson(Map<String, dynamic> json) =
      _$FeelsLikeModelImpl.fromJson;

  @override
  double get day;
  @override
  @JsonKey(ignore: true)
  _$$FeelsLikeModelImplCopyWith<_$FeelsLikeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
