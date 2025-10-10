import 'dart:async';
import 'dart:developer';

import 'package:{{app_name.snakeCase()}}/core/di/di.dart';
import 'package:{{app_name.snakeCase()}}/core/state_management/bloc_observer.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

Future<void> bootstrap(Widget Function() builder) async {
  // Ensure Flutter bindings are initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Lock device orientation to portrait mode
  unawaited(
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]),
  );

  // Set up global error handling
  FlutterError.onError = (details) {
    log(
      details.exceptionAsString(),
      stackTrace: details.stack,
    );
  };

  // Set up Bloc observer for debugging
  Bloc.observer = const AppBlocObserver();

  // Hydrated storage initialization
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(
      (await getApplicationDocumentsDirectory()).path,
    ),
  );

  // Add cross-flavor configuration here
  await configureDependencies();

  runApp(builder());
}
