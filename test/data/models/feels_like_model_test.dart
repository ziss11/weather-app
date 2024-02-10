import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/models/feels_like_model.dart';

import '../dummy_data/dummy_objects.dart';

void main() {
  test('should return a valid model from JSON', () {
    // arrange
    final Map<String, dynamic> jsonMap = tFeelsLikeJson;
    // act
    final result = FeelsLikeModel.fromJson(jsonMap);
    // assert
    expect(result, tFeelsLikeModel);
  });

  test('should return a JSON map containing the proper data', () {
    // act
    final result = tFeelsLikeModel.toJson();
// assert
    final expectedJson = tFeelsLikeJson;
    expect(result, expectedJson);
  });
}
