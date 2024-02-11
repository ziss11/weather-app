// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../weather_daily_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherDailyModel _$WeatherDailyModelFromJson(Map<String, dynamic> json) {
  return _WeatherDailyModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherDailyModel {
  @JsonKey(name: 'dt')
  int get date => throw _privateConstructorUsedError;
  TempModel get temp => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  List<WeatherDetailModel> get weather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDailyModelCopyWith<WeatherDailyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDailyModelCopyWith<$Res> {
  factory $WeatherDailyModelCopyWith(
          WeatherDailyModel value, $Res Function(WeatherDailyModel) then) =
      _$WeatherDailyModelCopyWithImpl<$Res, WeatherDailyModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') int date,
      TempModel temp,
      int humidity,
      List<WeatherDetailModel> weather});

  $TempModelCopyWith<$Res> get temp;
}

/// @nodoc
class _$WeatherDailyModelCopyWithImpl<$Res, $Val extends WeatherDailyModel>
    implements $WeatherDailyModelCopyWith<$Res> {
  _$WeatherDailyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? temp = null,
    Object? humidity = null,
    Object? weather = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as TempModel,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDetailModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TempModelCopyWith<$Res> get temp {
    return $TempModelCopyWith<$Res>(_value.temp, (value) {
      return _then(_value.copyWith(temp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherDailyModelImplCopyWith<$Res>
    implements $WeatherDailyModelCopyWith<$Res> {
  factory _$$WeatherDailyModelImplCopyWith(_$WeatherDailyModelImpl value,
          $Res Function(_$WeatherDailyModelImpl) then) =
      __$$WeatherDailyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') int date,
      TempModel temp,
      int humidity,
      List<WeatherDetailModel> weather});

  @override
  $TempModelCopyWith<$Res> get temp;
}

/// @nodoc
class __$$WeatherDailyModelImplCopyWithImpl<$Res>
    extends _$WeatherDailyModelCopyWithImpl<$Res, _$WeatherDailyModelImpl>
    implements _$$WeatherDailyModelImplCopyWith<$Res> {
  __$$WeatherDailyModelImplCopyWithImpl(_$WeatherDailyModelImpl _value,
      $Res Function(_$WeatherDailyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? temp = null,
    Object? humidity = null,
    Object? weather = null,
  }) {
    return _then(_$WeatherDailyModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as TempModel,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherDetailModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$WeatherDailyModelImpl implements _WeatherDailyModel {
  const _$WeatherDailyModelImpl(
      {@JsonKey(name: 'dt') required this.date,
      required this.temp,
      required this.humidity,
      required final List<WeatherDetailModel> weather})
      : _weather = weather;

  factory _$WeatherDailyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherDailyModelImplFromJson(json);

  @override
  @JsonKey(name: 'dt')
  final int date;
  @override
  final TempModel temp;
  @override
  final int humidity;
  final List<WeatherDetailModel> _weather;
  @override
  List<WeatherDetailModel> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  String toString() {
    return 'WeatherDailyModel(date: $date, temp: $temp, humidity: $humidity, weather: $weather)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDailyModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            const DeepCollectionEquality().equals(other._weather, _weather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, temp, humidity,
      const DeepCollectionEquality().hash(_weather));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherDailyModelImplCopyWith<_$WeatherDailyModelImpl> get copyWith =>
      __$$WeatherDailyModelImplCopyWithImpl<_$WeatherDailyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherDailyModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherDailyModel implements WeatherDailyModel {
  const factory _WeatherDailyModel(
          {@JsonKey(name: 'dt') required final int date,
          required final TempModel temp,
          required final int humidity,
          required final List<WeatherDetailModel> weather}) =
      _$WeatherDailyModelImpl;

  factory _WeatherDailyModel.fromJson(Map<String, dynamic> json) =
      _$WeatherDailyModelImpl.fromJson;

  @override
  @JsonKey(name: 'dt')
  int get date;
  @override
  TempModel get temp;
  @override
  int get humidity;
  @override
  List<WeatherDetailModel> get weather;
  @override
  @JsonKey(ignore: true)
  _$$WeatherDailyModelImplCopyWith<_$WeatherDailyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
