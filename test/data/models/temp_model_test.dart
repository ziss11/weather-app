import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/models/temp_model.dart';

void main() {
  final tTempJson = {
    'day': 1.0,
    'night': 1.0,
  };

  const tTempModel = TempModel(
    day: 1.0,
    night: 1.0,
  );

  test('should return a valid model from JSON', () {
    // arrange
    final Map<String, dynamic> jsonMap = tTempJson;
    // act
    final result = TempModel.fromJson(jsonMap);
    // assert
    expect(result, tTempModel);
  });

  test('should return a JSON map containing the proper data', () {
    // act
    final result = tTempModel.toJson();
    // assert
    final expectedJson = tTempJson;
    expect(result, expectedJson);
  });
}
