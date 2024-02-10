import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/models/temp_model.dart';

import '../dummy_data/dummy_objects.dart';

void main() {
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
