import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/temp_model.freezed.dart';
part 'generated/temp_model.g.dart';

@freezed
class TempModel with _$TempModel {
  const factory TempModel({
    required double day,
  }) = _TempModel;

  factory TempModel.fromJson(Map<String, Object?> json) =>
      _$TempModelFromJson(json);
}
