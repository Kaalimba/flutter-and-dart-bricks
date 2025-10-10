import 'package:{{app_name.snakeCase()}}/core/navigation/app_routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final appRouterConfig = GoRouter(
  routes: $appRoutes,
  navigatorKey: rootNavigatorKey,
  debugLogDiagnostics: kDebugMode,
  initialLocation: const AuthRoute().location,
);

/*
class _DebugNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) {
    super.didPush(route, previousRoute);
    print('Route pushed: ${route.settings.name}');
  }

  @override
  void didPop(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) {
    super.didPop(route, previousRoute);
    print('Route popped: ${route.settings.name}');
  }

  @override
  void didReplace({
    Route<dynamic>? newRoute,
    Route<dynamic>? oldRoute,
  }) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    print(
      'Route replaced: Old: ${oldRoute?.settings.name}, New: ${newRoute?.settings.name}',
    );
    // Perform actions when a route is replaced
  }

  @override
  void didRemove(
    Route<dynamic> route,
    Route<dynamic>? previousRoute,
  ) {
    super.didRemove(route, previousRoute);
    print('Route removed: ${route.settings.name}');
    // Perform actions when a route is removed
  }
}
*/
