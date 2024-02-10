// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResultState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultStateInitial<T> value) initial,
    required TResult Function(ResultStateLoading<T> value) loading,
    required TResult Function(ResultStateLoaded<T> value) loaded,
    required TResult Function(ResultStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultStateInitial<T> value)? initial,
    TResult? Function(ResultStateLoading<T> value)? loading,
    TResult? Function(ResultStateLoaded<T> value)? loaded,
    TResult? Function(ResultStateError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultStateInitial<T> value)? initial,
    TResult Function(ResultStateLoading<T> value)? loading,
    TResult Function(ResultStateLoaded<T> value)? loaded,
    TResult Function(ResultStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultStateCopyWith<T, $Res> {
  factory $ResultStateCopyWith(
          ResultState<T> value, $Res Function(ResultState<T>) then) =
      _$ResultStateCopyWithImpl<T, $Res, ResultState<T>>;
}

/// @nodoc
class _$ResultStateCopyWithImpl<T, $Res, $Val extends ResultState<T>>
    implements $ResultStateCopyWith<T, $Res> {
  _$ResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ResultStateInitialImplCopyWith<T, $Res> {
  factory _$$ResultStateInitialImplCopyWith(_$ResultStateInitialImpl<T> value,
          $Res Function(_$ResultStateInitialImpl<T>) then) =
      __$$ResultStateInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ResultStateInitialImplCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$ResultStateInitialImpl<T>>
    implements _$$ResultStateInitialImplCopyWith<T, $Res> {
  __$$ResultStateInitialImplCopyWithImpl(_$ResultStateInitialImpl<T> _value,
      $Res Function(_$ResultStateInitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultStateInitialImpl<T> implements ResultStateInitial<T> {
  const _$ResultStateInitialImpl();

  @override
  String toString() {
    return 'ResultState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultStateInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultStateInitial<T> value) initial,
    required TResult Function(ResultStateLoading<T> value) loading,
    required TResult Function(ResultStateLoaded<T> value) loaded,
    required TResult Function(ResultStateError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultStateInitial<T> value)? initial,
    TResult? Function(ResultStateLoading<T> value)? loading,
    TResult? Function(ResultStateLoaded<T> value)? loaded,
    TResult? Function(ResultStateError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultStateInitial<T> value)? initial,
    TResult Function(ResultStateLoading<T> value)? loading,
    TResult Function(ResultStateLoaded<T> value)? loaded,
    TResult Function(ResultStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ResultStateInitial<T> implements ResultState<T> {
  const factory ResultStateInitial() = _$ResultStateInitialImpl<T>;
}

/// @nodoc
abstract class _$$ResultStateLoadingImplCopyWith<T, $Res> {
  factory _$$ResultStateLoadingImplCopyWith(_$ResultStateLoadingImpl<T> value,
          $Res Function(_$ResultStateLoadingImpl<T>) then) =
      __$$ResultStateLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ResultStateLoadingImplCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$ResultStateLoadingImpl<T>>
    implements _$$ResultStateLoadingImplCopyWith<T, $Res> {
  __$$ResultStateLoadingImplCopyWithImpl(_$ResultStateLoadingImpl<T> _value,
      $Res Function(_$ResultStateLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultStateLoadingImpl<T> implements ResultStateLoading<T> {
  const _$ResultStateLoadingImpl();

  @override
  String toString() {
    return 'ResultState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultStateLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultStateInitial<T> value) initial,
    required TResult Function(ResultStateLoading<T> value) loading,
    required TResult Function(ResultStateLoaded<T> value) loaded,
    required TResult Function(ResultStateError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultStateInitial<T> value)? initial,
    TResult? Function(ResultStateLoading<T> value)? loading,
    TResult? Function(ResultStateLoaded<T> value)? loaded,
    TResult? Function(ResultStateError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultStateInitial<T> value)? initial,
    TResult Function(ResultStateLoading<T> value)? loading,
    TResult Function(ResultStateLoaded<T> value)? loaded,
    TResult Function(ResultStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ResultStateLoading<T> implements ResultState<T> {
  const factory ResultStateLoading() = _$ResultStateLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ResultStateLoadedImplCopyWith<T, $Res> {
  factory _$$ResultStateLoadedImplCopyWith(_$ResultStateLoadedImpl<T> value,
          $Res Function(_$ResultStateLoadedImpl<T>) then) =
      __$$ResultStateLoadedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ResultStateLoadedImplCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$ResultStateLoadedImpl<T>>
    implements _$$ResultStateLoadedImplCopyWith<T, $Res> {
  __$$ResultStateLoadedImplCopyWithImpl(_$ResultStateLoadedImpl<T> _value,
      $Res Function(_$ResultStateLoadedImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ResultStateLoadedImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ResultStateLoadedImpl<T> implements ResultStateLoaded<T> {
  const _$ResultStateLoadedImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'ResultState<$T>.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultStateLoadedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultStateLoadedImplCopyWith<T, _$ResultStateLoadedImpl<T>>
      get copyWith =>
          __$$ResultStateLoadedImplCopyWithImpl<T, _$ResultStateLoadedImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultStateInitial<T> value) initial,
    required TResult Function(ResultStateLoading<T> value) loading,
    required TResult Function(ResultStateLoaded<T> value) loaded,
    required TResult Function(ResultStateError<T> value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultStateInitial<T> value)? initial,
    TResult? Function(ResultStateLoading<T> value)? loading,
    TResult? Function(ResultStateLoaded<T> value)? loaded,
    TResult? Function(ResultStateError<T> value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultStateInitial<T> value)? initial,
    TResult Function(ResultStateLoading<T> value)? loading,
    TResult Function(ResultStateLoaded<T> value)? loaded,
    TResult Function(ResultStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ResultStateLoaded<T> implements ResultState<T> {
  const factory ResultStateLoaded(final T data) = _$ResultStateLoadedImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$ResultStateLoadedImplCopyWith<T, _$ResultStateLoadedImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResultStateErrorImplCopyWith<T, $Res> {
  factory _$$ResultStateErrorImplCopyWith(_$ResultStateErrorImpl<T> value,
          $Res Function(_$ResultStateErrorImpl<T>) then) =
      __$$ResultStateErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ResultStateErrorImplCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res, _$ResultStateErrorImpl<T>>
    implements _$$ResultStateErrorImplCopyWith<T, $Res> {
  __$$ResultStateErrorImplCopyWithImpl(_$ResultStateErrorImpl<T> _value,
      $Res Function(_$ResultStateErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ResultStateErrorImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResultStateErrorImpl<T> implements ResultStateError<T> {
  const _$ResultStateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ResultState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultStateErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultStateErrorImplCopyWith<T, _$ResultStateErrorImpl<T>> get copyWith =>
      __$$ResultStateErrorImplCopyWithImpl<T, _$ResultStateErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultStateInitial<T> value) initial,
    required TResult Function(ResultStateLoading<T> value) loading,
    required TResult Function(ResultStateLoaded<T> value) loaded,
    required TResult Function(ResultStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultStateInitial<T> value)? initial,
    TResult? Function(ResultStateLoading<T> value)? loading,
    TResult? Function(ResultStateLoaded<T> value)? loaded,
    TResult? Function(ResultStateError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultStateInitial<T> value)? initial,
    TResult Function(ResultStateLoading<T> value)? loading,
    TResult Function(ResultStateLoaded<T> value)? loaded,
    TResult Function(ResultStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResultStateError<T> implements ResultState<T> {
  const factory ResultStateError(final String message) =
      _$ResultStateErrorImpl<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$ResultStateErrorImplCopyWith<T, _$ResultStateErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
