import 'package:{{app_name.snakeCase()}}/core/state_management/state_of.dart';
import 'package:flutter/material.dart';

extension StatusExtension on Status {
  Widget when({
    Widget Function()? initial,
    Widget Function()? loading,
    Widget Function()? success,
    Widget Function()? failure,
    Widget Function()? orElse,
  }) {
    final widget = switch (this) {
      Status.initial => initial?.call(),
      Status.loading => loading?.call(),
      Status.success => success?.call(),
      Status.failure => failure?.call(),
    };

    if (widget != null) {
      return widget;
    }

    if (orElse != null) {
      return orElse();
    }

    return const SizedBox.shrink();
  }
}

extension StateOfWidgetExtension<T> on StateOf<T> {
  Widget when({
    Widget Function(StateOf<T> initialObject)? initial,
    Widget Function(StateOf<T> loadingObject)? loading,
    Widget Function(StateOf<T> successObject)? success,
    Widget Function(StateOf<T> failureObject)? failure,
    Widget Function(StateOf<T> object)? orElse,
  }) {
    return status.when(
      initial: initial != null ? () => initial(this) : null,
      loading: loading != null ? () => loading(this) : null,
      success: success != null ? () => success(this) : null,
      failure: failure != null ? () => failure(this) : null,
      orElse: orElse != null ? () => orElse(this) : null,
    );
  }
}
