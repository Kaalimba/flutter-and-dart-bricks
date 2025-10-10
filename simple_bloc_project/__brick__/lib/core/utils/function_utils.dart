T tryReturnValue<T>(
  T value,
  T defaultValue,
) {
  try {
    return value;
  } on Exception catch (_) {
    return defaultValue;
  }
}
