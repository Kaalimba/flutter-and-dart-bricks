import 'package:{{app_name.snakeCase()}}/core/env.dart';
import 'package:{{app_name.snakeCase()}}/core/models/jwt.dart';
import 'package:{{app_name.snakeCase()}}/core/network/header_extras_interceptor.dart';
import 'package:{{app_name.snakeCase()}}/core/storage/token_storage.dart';
import 'package:dio/dio.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class TokenInterceptor extends Fresh<Jwt> {
  TokenInterceptor({
    required AppTokenStorage tokenStorage,
    required HeaderExtrasInterceptor headerExtrasInterceptor,
  }) : super(
         // This value is set from env file using --dart-define-from-file
         // ignore: avoid_redundant_argument_values
         httpClient: Dio(BaseOptions(baseUrl: apiBaseUrl))
           ..interceptors.add(headerExtrasInterceptor),
         tokenStorage: tokenStorage,
         tokenHeader: (token) => {
           'Authorization': 'Bearer ${token.accessToken}',
         },
         shouldRefresh: (response) {
           return response?.statusCode == 401;
         },
         refreshToken: (token, Dio httpClient) async {
           final response = await httpClient.post<Map<String, dynamic>>(
             '/v1/auth/refresh',
             options: Options(
               headers: {
                 'Authorization': 'Bearer ${token?.refreshToken}',
               },
             ),
           );

           return Jwt.fromJson(response.data ?? {});
         },
       );

  @disposeMethod
  void dispose() {
    close();
  }
}
