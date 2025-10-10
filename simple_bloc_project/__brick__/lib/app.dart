import 'package:{{app_name.snakeCase()}}/core/navigation/config.dart';
import 'package:{{app_name.snakeCase()}}/core/theme/theme.dart';
import 'package:{{app_name.snakeCase()}}/core/theme/theme_utils.dart';
import 'package:{{app_name.snakeCase()}}/l10n/l10n.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouterConfig,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
