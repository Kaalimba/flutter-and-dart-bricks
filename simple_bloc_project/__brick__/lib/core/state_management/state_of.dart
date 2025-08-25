import 'package:equatable/equatable.dart';

enum Status {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == Status.initial;

  bool get isLoading => this == Status.loading;

  bool get isSuccess => this == Status.success;

  bool get isFailure => this == Status.failure;
}

class StateOf<T> with EquatableMixin {
  const StateOf({
    required this.value,
    this.status = Status.initial,
    this.message = '',
    this.previous,
  });

  const StateOf.success({
    required this.value,
    this.previous,
  }) : status = Status.success,
       message = '';

  final T value;
  final Status status;
  final String message;
  final StateOf<T>? previous;

  StateOf<T> copyWith({
    T? value,
    Status? status,
    String? message,
  }) {
    return StateOf<T>(
      value: value ?? this.value,
      status: status ?? this.status,
      message: message ?? this.message,
      previous: this,
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

  StateOf<T> toError(String message, [T? value]) {
    return copyWith(
      status: Status.failure,
      message: message,
      value: value,
    );
  }

  bool get isInitial => status.isInitial;

  bool get isLoading => status.isLoading;

  bool get isSuccess => status.isSuccess;

  bool get isFailure => status.isFailure;

  @override
  List<Object?> get props => [value, status, message, previous];
}
