import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/data/models/feels_like_model.dart';

void main() {
  final tFeelsLikeJson = {
    'day': 1.0,
    'night': 1.0,
  };

  const tFeelsLikeModel = FeelsLikeModel(
    day: 1.0,
    night: 1.0,
  );

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
