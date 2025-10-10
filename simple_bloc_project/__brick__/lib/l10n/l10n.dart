import 'package:{{app_name.snakeCase()}}/l10n/gen/app_localizations.dart';
import 'package:flutter/widgets.dart';

export 'package:{{app_name.snakeCase()}}/l10n/gen/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);

  Locale get defaultLocale => const Locale('fr');
}
