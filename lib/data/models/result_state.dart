import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/result_state.freezed.dart';

@freezed
class ResultState<T> with _$ResultState {
  const factory ResultState.initial() = ResultStateInitial;
  const factory ResultState.loading() = ResultStateLoading;
  const factory ResultState.loaded(T data) = ResultStateLoaded;
  const factory ResultState.error(String message) = ResultStateError;
}
