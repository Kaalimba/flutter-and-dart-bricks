import 'package:{{app_name.snakeCase()}}/core/types/json_map.dart';

/// A simple error container used across layers.
class Failure {
  const Failure({
    required this.message,
    this.statusCode = 0,
    this.data = const {},
  });

  final int statusCode;
  final String message;
  final JsonMap data;

  @override
  String toString() => message;
}
