import 'package:{{app_name.snakeCase()}}/core/error/failure.dart';
import 'package:{{app_name.snakeCase()}}/core/types/json_map.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/call_adapter.dart';

class HttpRequestErrorAdapter<T>
    extends CallAdapter<Future<T>, Future<Either<Failure, T>>> {
  @override
  Future<Either<Failure, T>> adapt(Future<T> Function() call) async {
    try {
      final response = await call();
      return Right(response);
    } on Exception catch (e) {
      late final Failure failure;

      if (e is DioException) {
        failure = switch (e.type) {
          DioExceptionType.connectionTimeout ||
          DioExceptionType.sendTimeout ||
          DioExceptionType.receiveTimeout => const Failure(
            message: 'You request took too long to complete.',
            statusCode: 408,
          ),
          DioExceptionType.badResponse => Failure(
            message: _getMessage(e.response?.data, e),
            data: _getData(e.response?.data),
            statusCode: e.response?.statusCode ?? 0,
          ),
          DioExceptionType.cancel => const Failure(
            message: 'Request was cancelled',
            statusCode: 499,
          ),
          DioExceptionType.connectionError => const Failure(
            message: 'No internet connection or server is unreachable.',
            statusCode: 503,
          ),
          _ => Failure(
            message: e.message ?? e.error?.toString() ?? '',
          ),
        };
      } else {
        failure = Failure(
          message: e.toString(),
        );
      }

      return Left(failure);
    }
  }

  String _getMessage(dynamic response, DioException exception) {
    if (response != null) {
      if (response is Map<String, dynamic>) {
        return response['message']?.toString() ??
            exception.message ??
            'An error occurred. Please try again later.';
      } else if (response is String) {
        return response;
      }
    }

    return 'An error occurred. Please try again later.';
  }

  JsonMap _getData(dynamic response) {
    if (response != null && response is Map<String, dynamic>) {
      return response['data'] as JsonMap? ?? {};
    }

    return {};
  }
}
