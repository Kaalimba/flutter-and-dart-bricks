enum AppStorageKey {
  jwt._('JWT'),
  themeMode._('THEME_MODE'),
  locale._('LOCALE');

  const AppStorageKey._(this._identifier);

  final String _identifier;

  String get name => _identifier;

  @override
  String toString() => _identifier;
}
