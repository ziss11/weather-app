// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../weather_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return _WeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponse {
  WeatherModel get current => throw _privateConstructorUsedError;
  List<WeatherModel> get hourly => throw _privateConstructorUsedError;
  List<WeatherDailyModel> get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherResponseCopyWith<WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseCopyWith<$Res> {
  factory $WeatherResponseCopyWith(
          WeatherResponse value, $Res Function(WeatherResponse) then) =
      _$WeatherResponseCopyWithImpl<$Res, WeatherResponse>;
  @useResult
  $Res call(
      {WeatherModel current,
      List<WeatherModel> hourly,
      List<WeatherDailyModel> daily});

  $WeatherModelCopyWith<$Res> get current;
}

/// @nodoc
class _$WeatherResponseCopyWithImpl<$Res, $Val extends WeatherResponse>
    implements $WeatherResponseCopyWith<$Res> {
  _$WeatherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? hourly = null,
    Object? daily = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as WeatherModel,
      hourly: null == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>,
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<WeatherDailyModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherModelCopyWith<$Res> get current {
    return $WeatherModelCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherResponseImplCopyWith<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  factory _$$WeatherResponseImplCopyWith(_$WeatherResponseImpl value,
          $Res Function(_$WeatherResponseImpl) then) =
      __$$WeatherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WeatherModel current,
      List<WeatherModel> hourly,
      List<WeatherDailyModel> daily});

  @override
  $WeatherModelCopyWith<$Res> get current;
}

/// @nodoc
class __$$WeatherResponseImplCopyWithImpl<$Res>
    extends _$WeatherResponseCopyWithImpl<$Res, _$WeatherResponseImpl>
    implements _$$WeatherResponseImplCopyWith<$Res> {
  __$$WeatherResponseImplCopyWithImpl(
      _$WeatherResponseImpl _value, $Res Function(_$WeatherResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? hourly = null,
    Object? daily = null,
  }) {
    return _then(_$WeatherResponseImpl(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as WeatherModel,
      hourly: null == hourly
          ? _value._hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>,
      daily: null == daily
          ? _value._daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<WeatherDailyModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherResponseImpl implements _WeatherResponse {
  const _$WeatherResponseImpl(
      {required this.current,
      required final List<WeatherModel> hourly,
      required final List<WeatherDailyModel> daily})
      : _hourly = hourly,
        _daily = daily;

  factory _$WeatherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherResponseImplFromJson(json);

  @override
  final WeatherModel current;
  final List<WeatherModel> _hourly;
  @override
  List<WeatherModel> get hourly {
    if (_hourly is EqualUnmodifiableListView) return _hourly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hourly);
  }

  final List<WeatherDailyModel> _daily;
  @override
  List<WeatherDailyModel> get daily {
    if (_daily is EqualUnmodifiableListView) return _daily;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_daily);
  }

  @override
  String toString() {
    return 'WeatherResponse(current: $current, hourly: $hourly, daily: $daily)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherResponseImpl &&
            (identical(other.current, current) || other.current == current) &&
            const DeepCollectionEquality().equals(other._hourly, _hourly) &&
            const DeepCollectionEquality().equals(other._daily, _daily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      current,
      const DeepCollectionEquality().hash(_hourly),
      const DeepCollectionEquality().hash(_daily));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherResponseImplCopyWith<_$WeatherResponseImpl> get copyWith =>
      __$$WeatherResponseImplCopyWithImpl<_$WeatherResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherResponseImplToJson(
      this,
    );
  }
}

abstract class _WeatherResponse implements WeatherResponse {
  const factory _WeatherResponse(
      {required final WeatherModel current,
      required final List<WeatherModel> hourly,
      required final List<WeatherDailyModel> daily}) = _$WeatherResponseImpl;

  factory _WeatherResponse.fromJson(Map<String, dynamic> json) =
      _$WeatherResponseImpl.fromJson;

  @override
  WeatherModel get current;
  @override
  List<WeatherModel> get hourly;
  @override
  List<WeatherDailyModel> get daily;
  @override
  @JsonKey(ignore: true)
  _$$WeatherResponseImplCopyWith<_$WeatherResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
