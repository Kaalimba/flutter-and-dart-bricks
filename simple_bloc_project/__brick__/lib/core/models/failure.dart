import 'package:{{project_name.snakeCase()}}/core/models/json_map.dart';

/// A simple error container used across layers.
class Failure {
  const Failure({
    required this.message,
    this.data = const {},
  });

  final String message;
  final JsonMap data;

  @override
  String toString() => message;
}

