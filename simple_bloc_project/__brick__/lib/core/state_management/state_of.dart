import 'package:equatable/equatable.dart';

enum Status { initial, loading, success, failure }

class StateOf<T> with EquatableMixin {
  const StateOf({
    required this.value,
    this.status = Status.initial,
    this.message = '',
  });

  const StateOf.initial({
    required this.value,
  }) : status = Status.initial,
       message = '';

  factory StateOf.fromJson({
    required Map<String, dynamic>? json,
    T Function(dynamic value)? decoder,
  }) {
    json ??= {};
    return StateOf<T>(
      value: decoder?.call(json['value']) ?? (json['value'] as T),
      status: Status.values[json['status'] as int],
      message: json['message'] as String,
    );
  }

  final T value;
  final Status status;
  final String message;

  StateOf<T> copyWith({
    T? value,
    Status? status,
    String? message,
  }) {
    return StateOf<T>(
      value: value ?? this.value,
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }

  StateOf<T> toInitial([T? value]) {
    return copyWith(
      status: Status.initial,
      value: value,
    );
  }

  StateOf<T> toLoading([T? value]) {
    return copyWith(
      status: Status.loading,
      value: value,
    );
  }

  StateOf<T> toSuccess([T? value]) {
    return copyWith(
      status: Status.success,
      value: value,
    );
  }

  StateOf<T> toFailure(String message, [T? value]) {
    return copyWith(
      status: Status.failure,
      message: message,
      value: value,
    );
  }

  Map<String, dynamic> toJson<V>({
    V Function(T value)? encoder,
  }) {
    return {
      'value': encoder?.call(value) ?? value,
      'status': status.index,
      'message': message,
    };
  }

  bool get isInitial => status == Status.initial;

  bool get isLoading => status == Status.loading;

  bool get isSuccess => status == Status.success;

  bool get isFailure => status == Status.failure;

  @override
  List<Object?> get props => [value, status, message];
}
