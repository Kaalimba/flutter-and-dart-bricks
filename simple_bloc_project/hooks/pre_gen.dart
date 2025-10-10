import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  //final appName = context.vars['app_name'] as String;
  /*final appDescription = context.vars['app_description'] as String;
  final appIdentifier = context.vars['app_identifier'] as String;

  final progress = context.logger.progress('Creating Flutter app');

  await Process.run('very_good', [
    'create',
    'flutter_app',
    '.', // appName
    '--desc',
    '"$appDescription"',
    '--org',
    '"$appIdentifier"',
  ]);

  progress.complete();*/

  // Display the current directory path
  context.logger.info('Current directory: ${Directory.current.path}');
}
