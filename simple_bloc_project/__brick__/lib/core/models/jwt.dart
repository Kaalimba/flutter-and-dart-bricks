import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'jwt.g.dart';

@JsonSerializable()
class Jwt {
  const Jwt({
    required this.accessToken,
    required this.refreshToken,
  });

  factory Jwt.fromJson(Map<String, dynamic> json) => _$JwtFromJson(json);

  factory Jwt.fromJsonString(String jsonString) => Jwt.fromJson(
    jsonDecode(jsonString) as Map<String, dynamic>,
  );

  final String accessToken;
  final String refreshToken;

  Map<String, dynamic> toJson() => _$JwtToJson(this);

  String toJsonString() => jsonEncode(toJson());
}
