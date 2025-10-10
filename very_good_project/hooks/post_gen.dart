import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  final appName = context.vars['app_name'] as String;
  final appDescription = context.vars['app_description'] as String;
  final appIdentifier = context.vars['app_identifier'] as String;

  // Create the Flutter project using very_good_flutter
  final progress = context.logger.progress(
    'Creating very_good_flutter project',
  );
  await Process.run('very_good', [
    'create',
    'flutter_app',
    '.', // appName
    '--desc',
    '"$appDescription"',
    '--org',
    '"$appIdentifier"',
  ]);
  progress.complete();

  // Remove some files/directories that are not needed
  final progressCleanup = context.logger.progress('Cleaning up');
  final itemsToRemove = ['test', 'lib/app', 'lib/counter'];
  for (final item in itemsToRemove) {
    final entity = FileSystemEntity.typeSync(item);
    if (entity != FileSystemEntityType.notFound) {
      if (entity == FileSystemEntityType.directory) {
        await Directory(item).delete(recursive: true);
      } else if (entity == FileSystemEntityType.file) {
        await File(item).delete();
      }
    }
  }
  progressCleanup.complete();

  // Replace app name in pubspec.yaml
  final progressPubspec = context.logger.progress(
    'Updating pubspec.yaml',
  );
  final pubspecFile = File('pubspec.yaml');
  if (await pubspecFile.exists()) {
    String pubspecContent = await pubspecFile.readAsString();
    final currentDirectoryName =
        Directory.current.path.split(Platform.pathSeparator).last;
    pubspecContent = pubspecContent.replaceAll(currentDirectoryName, appName);
    await pubspecFile.writeAsString(pubspecContent);
  }
  progressPubspec.complete();
}
