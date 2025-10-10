import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  // Run `flutter pub get` to install dependencies
  final pubGetProgress = context.logger.progress('Installing packages');
  await Process.run('flutter', ['packages', 'get']);
  pubGetProgress.complete();

  // Run `flutter pub run build_runner build --delete-conflicting-outputs` to generate code
  final buildProgress = context.logger.progress('Generating code');
  await Process.run('flutter', [
    'pub',
    'run',
    'build_runner',
    'build',
    '--delete-conflicting-outputs',
  ]);
  buildProgress.complete();
}
