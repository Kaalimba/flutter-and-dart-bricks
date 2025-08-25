import 'package:{{project_name.snakeCase()}}/core/state_management/state_of.dart';
import 'package:flutter/material.dart';

extension StateOfWidgetExtension<T> on StateOf<T> {
  Widget when({
    Widget Function(StateOf<T> initialObject)? initial,
    Widget Function(StateOf<T> loadingObject)? loading,
    Widget Function(StateOf<T> successObject)? success,
    Widget Function(StateOf<T> failureObject)? failure,
    Widget Function(StateOf<T> object)? orElse,
  }) {
    if (isInitial) {
      if (initial != null) {
        return initial(this);
      }
    } else if (isLoading) {
      if (loading != null) {
        return loading(this);
      }
    } else if (isSuccess) {
      if (success != null) {
        return success(this);
      }
    } else if (isFailure) {
      if (failure != null) {
        return failure(this);
      }
    }

    if (orElse != null) {
      return orElse(this);
    }

    return const SizedBox.shrink();
  }
}
