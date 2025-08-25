import 'dart:async';

import 'package:{{project_name.snakeCase()}}/features/onboarding/pages/initial_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'app_routes.g.dart';

@TypedGoRoute<InitialRoute>(path: '/')
class InitialRoute extends GoRouteData with _$InitialRoute {
  const InitialRoute();

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    // Check if the user is authenticated
    // Check onboarding screens
    return null;
  }

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const InitialPage();
  }
}
