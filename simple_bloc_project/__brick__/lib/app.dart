import 'package:{{project_name.snakeCase()}}/core/navigation/config.dart';
import 'package:{{project_name.snakeCase()}}/core/theme/theme.dart';
import 'package:{{project_name.snakeCase()}}/core/theme/theme_utils.dart';
import 'package:{{project_name.snakeCase()}}/l10n/l10n.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = createTextTheme(context, 'Sora', 'Sora');
    final theme = AppTheme(textTheme);
    return MaterialApp.router(
      theme: theme.light(),
      darkTheme: theme.dark(),
      themeMode: ThemeMode.light,
      routerConfig: appRouterConfig,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
